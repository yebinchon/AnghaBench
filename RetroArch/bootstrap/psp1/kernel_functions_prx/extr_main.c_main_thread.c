
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Buttons; } ;
typedef int SceSize ;
typedef TYPE_1__ SceCtrlData ;


 int buttons ;
 int sceCtrlPeekBufferPositive (TYPE_1__*,int) ;
 int sceKernelDelayThread (int) ;
 int sceKernelExitThread (int ) ;
 int thread_active ;

__attribute__((used)) static int main_thread(SceSize args, void *argp)
{
   SceCtrlData paddata;

   thread_active = 1;

   while (thread_active)
   {
      sceCtrlPeekBufferPositive(&paddata, 1);
      buttons = paddata.Buttons;
      sceKernelDelayThread(1000000/60);
   }

   sceKernelExitThread(0);

   return 0;
}
