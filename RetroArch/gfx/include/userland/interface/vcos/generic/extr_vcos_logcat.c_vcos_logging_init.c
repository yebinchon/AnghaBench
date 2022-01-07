
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_log ;
 int dflt_log_category ;
 int inited ;
 int lock ;
 int vcos_assert (int) ;
 int vcos_cmd_register (int *) ;
 int vcos_log_platform_init () ;
 int vcos_log_register (char*,int *) ;
 int vcos_mutex_create (int *,char*) ;

void vcos_logging_init(void)
{
   if (inited)
   {

      return;
   }
   vcos_mutex_create(&lock, "vcos_log");

   vcos_log_platform_init();

   vcos_log_register("default", &dflt_log_category);





   vcos_assert(!inited);
   inited = 1;
}
