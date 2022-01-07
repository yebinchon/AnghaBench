
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ timer0; int T1MD; scalar_t__ T0C; } ;


 TYPE_1__* ScuRegs ;
 int ScuSendTimer0 () ;
 int SendInterrupt (int,int,int,int) ;

void ScuSendHBlankIN(void) {
   SendInterrupt(0x42, 0xD, 0x0004, 0x0004);

   ScuRegs->timer0++;
   if (ScuRegs->T1MD & 0x1)
   {

      if (ScuRegs->timer0 == ScuRegs->T0C)
         ScuSendTimer0();


   }
}
