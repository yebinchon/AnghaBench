
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceSize ;


 int exit_callback ;
 int lprintf (char*,int ,int ) ;
 int power_callback ;
 int sceKernelCreateCallback (char*,int ,int *) ;
 int sceKernelGetThreadCurrentPriority () ;
 int sceKernelGetThreadId () ;
 int sceKernelRegisterExitCallback (int) ;
 int sceKernelSleepThreadCB () ;
 int scePowerRegisterCallback (int ,int) ;

__attribute__((used)) static int callback_thread(SceSize args, void *argp)
{
 int cbid;

 lprintf("callback_thread started with id %08x, priority %i\n",
  sceKernelGetThreadId(), sceKernelGetThreadCurrentPriority());

 cbid = sceKernelCreateCallback("Exit Callback", exit_callback, ((void*)0));
 sceKernelRegisterExitCallback(cbid);
 cbid = sceKernelCreateCallback("Power Callback", power_callback, ((void*)0));
 scePowerRegisterCallback(0, cbid);

 sceKernelSleepThreadCB();

 return 0;
}
