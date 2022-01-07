
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* OREG; } ;


 int MSH2 ;
 int SH2SendInterrupt (int ,int,int) ;
 TYPE_1__* SmpcRegs ;

__attribute__((used)) static void SmpcNMIREQ(void) {
   SH2SendInterrupt(MSH2, 0xB, 16);
   SmpcRegs->OREG[31] = 0x18;
}
