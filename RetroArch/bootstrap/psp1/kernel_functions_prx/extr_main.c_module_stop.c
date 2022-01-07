
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ main_thread_id ;
 int sceKernelWaitThreadEnd (scalar_t__,int *) ;
 scalar_t__ thread_active ;

int module_stop(void)
{
   if (main_thread_id >= 0)
   {
      thread_active = 0;
      sceKernelWaitThreadEnd(main_thread_id, ((void*)0));
   }
   return 0;
}
