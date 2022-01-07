
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fopen (char*,char*) ;
 int log_fhandle ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;
 scalar_t__ vcos_log_to_file ;
 int vcos_process_id_current () ;

void _vcos_log_platform_init(void)
{
   if(vcos_log_to_file)
   {
      char log_fname[100];



      snprintf(log_fname, 100, "/var/log/vcos_log%u.txt", vcos_process_id_current());

      log_fhandle = fopen(log_fname, "w");
   }
   else
      log_fhandle = stderr;
}
