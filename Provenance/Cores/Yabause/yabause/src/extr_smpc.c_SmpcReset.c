
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resd; int port2; int port1; scalar_t__ timing; scalar_t__ firstPeri; scalar_t__ intbackIreg0; scalar_t__ intback; scalar_t__ resb; scalar_t__ ste; scalar_t__ cdres; scalar_t__ sndres; scalar_t__ sysres; scalar_t__ mshnmi; scalar_t__ dotsel; scalar_t__ SMEM; } ;
typedef int Smpc ;
typedef int PortData_struct ;


 TYPE_1__* SmpcInternalVars ;
 int SmpcRecheckRegion () ;
 scalar_t__ SmpcRegs ;
 int memset (void*,int ,int) ;

void SmpcReset(void) {
   memset((void *)SmpcRegs, 0, sizeof(Smpc));
   memset((void *)SmpcInternalVars->SMEM, 0, 4);

   SmpcRecheckRegion();

   SmpcInternalVars->dotsel = 0;
   SmpcInternalVars->mshnmi = 0;
   SmpcInternalVars->sysres = 0;
   SmpcInternalVars->sndres = 0;
   SmpcInternalVars->cdres = 0;
   SmpcInternalVars->resd = 1;
   SmpcInternalVars->ste = 0;
   SmpcInternalVars->resb = 0;

   SmpcInternalVars->intback=0;
   SmpcInternalVars->intbackIreg0=0;
   SmpcInternalVars->firstPeri=0;

   SmpcInternalVars->timing=0;

   memset((void *)&SmpcInternalVars->port1, 0, sizeof(PortData_struct));
   memset((void *)&SmpcInternalVars->port2, 0, sizeof(PortData_struct));
}
