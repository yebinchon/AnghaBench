
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* OREG; } ;


 int M68KStop () ;
 TYPE_1__* SmpcRegs ;

__attribute__((used)) static void SmpcSNDOFF(void) {
   M68KStop();
   SmpcRegs->OREG[31] = 0x7;
}
