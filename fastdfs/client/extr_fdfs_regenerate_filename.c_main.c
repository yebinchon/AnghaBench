
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int appender_file_id ;
struct TYPE_2__ {int log_level; } ;
typedef int ConnectionInfo ;


 int ECONNREFUSED ;
 int LOG_ERR ;
 char* STRERROR (int) ;
 scalar_t__ errno ;
 int fdfs_client_destroy () ;
 int fdfs_client_init (char*) ;
 int fprintf (int ,char*,char*,...) ;
 TYPE_1__ g_log_context ;
 int log_init () ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int storage_regenerate_appender_filename1 (int *,int *,char*,char*) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_get_connection () ;

int main(int argc, char *argv[])
{
 char *conf_filename;
 ConnectionInfo *pTrackerServer;
 int result;
 char appender_file_id[128];
 char new_file_id[128];

 if (argc < 3)
 {
  fprintf(stderr, "regenerate filename for the appender file.\n"
                "NOTE: the regenerated file will be a normal file!\n"
                "Usage: %s <config_file> <appender_file_id>\n",
                argv[0]);
  return 1;
 }

 log_init();
 g_log_context.log_level = LOG_ERR;

 conf_filename = argv[1];
 if ((result=fdfs_client_init(conf_filename)) != 0)
 {
  return result;
 }

 pTrackerServer = tracker_get_connection();
 if (pTrackerServer == ((void*)0))
 {
  fdfs_client_destroy();
  return errno != 0 ? errno : ECONNREFUSED;
 }

 snprintf(appender_file_id, sizeof(appender_file_id), "%s", argv[2]);
 if ((result=storage_regenerate_appender_filename1(pTrackerServer,
  ((void*)0), appender_file_id, new_file_id)) != 0)
 {
  fprintf(stderr, "regenerate file %s fail, "
   "error no: %d, error info: %s\n",
   appender_file_id, result, STRERROR(result));
  return result;
 }

    printf("%s\n", new_file_id);

 tracker_close_connection_ex(pTrackerServer, 1);
 fdfs_client_destroy();

 return result;
}
