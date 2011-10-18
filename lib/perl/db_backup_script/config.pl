$db_name = "postgres";
$db_host = "localhost";
$db_user = "postgres";
#$db_pass = '***';

@exclude_databases = (
   'template1',
   'template0',
   'postgres'
);

@table_backup_exclude_schemas = (
   'information_schema',
   'pg_catalog'
);

$backup_path = '/var/lib/pgsql/9.0/backups';
$compress_path = "$backup_path/compressed"; #directory for compressed files.

$data_file_name = "data.sql";
$schema_file_name = "schema.sql";

$delete_backups_older_than = 10; #days, will not delete anything if there is not more than this number of backups
$max_purge = 3;  #maximum number of deletes before purging is stopped

$suppress_output = 0; 

#$skip_vaccum = 1;
#$skip_data = 1;
#$skip_schema = 1;
#$skip_table_backup = 1;
#$skip_purge = 1;
#$skip_compress = 1;

$compress_cmd = "cd $backup_path; tar czvf "; #uses gzip.  Worse compression rates but MUCH faster than bzip2.  Speed is the most important thing.
$compressed_file_extension = '.tar.gz';

$time_format = '%Y-%m-%d';
