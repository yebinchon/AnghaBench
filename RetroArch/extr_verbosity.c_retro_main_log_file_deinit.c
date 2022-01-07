
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int free (int *) ;
 int * log_file_buf ;
 int * log_file_fp ;
 int log_file_initialized ;

void retro_main_log_file_deinit(void)
{
   if (log_file_fp && log_file_initialized)
   {
      fclose(log_file_fp);
      log_file_fp = ((void*)0);
   }
   if (log_file_buf)
      free(log_file_buf);
   log_file_buf = ((void*)0);

   log_file_initialized = 0;
}
