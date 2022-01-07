
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int RARCH_ERR (char*,char const*) ;
 int _IOFBF ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ fopen_utf8 (char const*,char*) ;
 scalar_t__ log_file_buf ;
 int * log_file_fp ;
 int log_file_initialized ;
 int logging_mtx ;
 int mutexInit (int *) ;
 int setvbuf (int *,char*,int ,int) ;
 int * stderr ;

void retro_main_log_file_init(const char *path, bool append)
{
   if (log_file_initialized)
      return;





   log_file_fp = stderr;
   if (path == ((void*)0))
      return;

   log_file_fp = (FILE*)fopen_utf8(path, append ? "ab" : "wb");

   if (!log_file_fp)
   {
      log_file_fp = stderr;
      RARCH_ERR("Failed to open system event log file: %s\n", path);
      return;
   }

   log_file_initialized = 1;



   log_file_buf = calloc(1, 0x4000);
   setvbuf(log_file_fp, (char*)log_file_buf, _IOFBF, 0x4000);

}
