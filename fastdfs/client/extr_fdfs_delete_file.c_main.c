
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int file_id ;
struct TYPE_2__ {int log_level; } ;
typedef int ConnectionInfo ;


 int ECONNREFUSED ;
 int LOG_ERR ;
 char* STRERROR (int) ;
 scalar_t__ errno ;
 int fdfs_client_destroy () ;
 int fdfs_client_init (char*) ;
 TYPE_1__ g_log_context ;
 int ignore_signal_pipe () ;
 int log_init () ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*) ;
 int storage_delete_file1 (int *,int *,char*) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_get_connection () ;

int main(int argc, char *argv[])
{
 char *conf_filename;
 ConnectionInfo *pTrackerServer;
 int result;
 char file_id[128];

 if (argc < 3)
 {
  printf("Usage: %s <config_file> <file_id>\n", argv[0]);
  return 1;
 }

 log_init();
 g_log_context.log_level = LOG_ERR;
 ignore_signal_pipe();

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

 snprintf(file_id, sizeof(file_id), "%s", argv[2]);
 if ((result=storage_delete_file1(pTrackerServer, ((void*)0), file_id)) != 0)
 {
  printf("delete file fail, " "error no: %d, error info: %s\n", result, STRERROR(result));


 }

 tracker_close_connection_ex(pTrackerServer, 1);
 fdfs_client_destroy();

 return result;
}
