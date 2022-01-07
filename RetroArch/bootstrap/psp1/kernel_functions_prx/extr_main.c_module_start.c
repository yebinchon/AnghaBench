
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceSize ;


 scalar_t__ buttons ;
 scalar_t__ main_thread ;
 int main_thread_id ;
 int sceKernelCreateThread (char*,scalar_t__,int,int,int ,int *) ;
 int sceKernelStartThread (int ,int ,int ) ;
 scalar_t__ thread_active ;

int module_start(SceSize args, void *argp)
{
   (void)args;
   (void)argp;

   buttons = 0;
   thread_active = 0;
   main_thread_id = sceKernelCreateThread("main Thread", main_thread, 0x11, 0x200, 0, ((void*)0));

   if (main_thread >= 0)
      sceKernelStartThread(main_thread_id, 0, 0);

   return 0;
}
