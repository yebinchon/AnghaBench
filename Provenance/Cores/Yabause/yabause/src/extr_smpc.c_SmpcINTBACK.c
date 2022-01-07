
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int intback; int intbackIreg0; int firstPeri; } ;
struct TYPE_3__ {int SF; int* IREG; int SR; int* OREG; } ;


 int ScuSendSystemManager () ;
 int SmpcINTBACKPeripheral () ;
 int SmpcINTBACKStatus () ;
 TYPE_2__* SmpcInternalVars ;
 TYPE_1__* SmpcRegs ;

__attribute__((used)) static void SmpcINTBACK(void) {
   SmpcRegs->SF = 1;

   if (SmpcInternalVars->intback) {
      SmpcINTBACKPeripheral();
      ScuSendSystemManager();
      return;
   }



   if ((SmpcInternalVars->intbackIreg0 = (SmpcRegs->IREG[0] & 1))) {

      SmpcInternalVars->firstPeri = 1;
      SmpcInternalVars->intback = (SmpcRegs->IREG[1] & 0x8) >> 3;
      SmpcINTBACKStatus();
      SmpcRegs->SR = 0x4F | (SmpcInternalVars->intback << 5);
      ScuSendSystemManager();
      return;
   }
   if (SmpcRegs->IREG[1] & 0x8) {
      SmpcInternalVars->firstPeri = 1;
      SmpcInternalVars->intback = 1;
      SmpcRegs->SR = 0x40;
      SmpcINTBACKPeripheral();
      SmpcRegs->OREG[31] = 0x10;
      ScuSendSystemManager();
      return;
   }
}
