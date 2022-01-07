
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CallbackThread ;
 int sceKernelCreateThread (char*,int ,int,int,int ,int ) ;
 int sceKernelStartThread (int,int ,int ) ;

int SetupCallbacks(void)
{
   int thid = sceKernelCreateThread("update_thread", CallbackThread, 0x11, 0xFA0, 0, 0);
   if (thid >= 0)
      sceKernelStartThread(thid, 0, 0);

   return thid;
}
