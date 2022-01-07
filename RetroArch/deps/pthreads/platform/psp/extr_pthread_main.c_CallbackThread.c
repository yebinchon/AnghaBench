
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceSize ;


 int exit_callback ;
 int sceKernelCreateCallback (char*,int ,int *) ;
 int sceKernelRegisterExitCallback (int) ;
 int sceKernelSleepThreadCB () ;

int CallbackThread(SceSize args, void *argp)
{
   int cbid = sceKernelCreateCallback("Exit Callback", exit_callback, ((void*)0));
   sceKernelRegisterExitCallback(cbid);

   sceKernelSleepThreadCB();

   return 0;
}
