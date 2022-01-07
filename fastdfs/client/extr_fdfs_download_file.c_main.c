
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int file_id ;
struct TYPE_2__ {int log_level; } ;
typedef int ConnectionInfo ;


 int ECONNREFUSED ;
 int FDFS_DOWNLOAD_TO_FILE ;
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
 int storage_do_download_file1_ex (int *,int *,int ,char*,scalar_t__,scalar_t__,char**,int *,scalar_t__*) ;
 char* strrchr (char*,char) ;
 scalar_t__ strtoll (char*,int *,int) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_get_connection () ;

int main(int argc, char *argv[])
{
 char *conf_filename;
 char *local_filename;
 ConnectionInfo *pTrackerServer;
 int result;
 char file_id[128];
 int64_t file_size;
 int64_t file_offset;
 int64_t download_bytes;

 if (argc < 3)
 {
  printf("Usage: %s <config_file> <file_id> " "[local_filename] [<download_offset> " "<download_bytes>]\n", argv[0]);


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

 file_offset = 0;
 download_bytes = 0;
 if (argc >= 4)
 {
  local_filename = argv[3];
  if (argc >= 6)
  {
   file_offset = strtoll(argv[4], ((void*)0), 10);
   download_bytes = strtoll(argv[5], ((void*)0), 10);
  }
 }
 else
 {
  local_filename = strrchr(file_id, '/');
  if (local_filename != ((void*)0))
  {
   local_filename++;
  }
  else
  {
   local_filename = file_id;
  }
 }

 result = storage_do_download_file1_ex(pTrackerServer, ((void*)0), FDFS_DOWNLOAD_TO_FILE, file_id, file_offset, download_bytes, &local_filename, ((void*)0), &file_size);



 if (result != 0)
 {
  printf("download file fail, " "error no: %d, error info: %s\n", result, STRERROR(result));


 }

 tracker_close_connection_ex(pTrackerServer, 1);
 fdfs_client_destroy();

 return 0;
}
