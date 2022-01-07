
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Buttons; } ;
typedef TYPE_1__ SceCtrlData ;


 int PSP_CTRL_UP ;
 int SetupCallbacks () ;
 int printf (char*) ;
 int pspDebugScreenInit () ;
 int pte_test_main () ;
 int sceCtrlReadBufferPositive (TYPE_1__*,int) ;

int main(void)
{
   SceCtrlData pad;

   pspDebugScreenInit();
   SetupCallbacks();

   pte_test_main();

   while (1)
   {
      sceCtrlReadBufferPositive(&pad, 1);
      if (pad.Buttons & PSP_CTRL_UP)
      {
         printf("Exiting...\n");
         return 0;
      }

   }
   return 0;
}
