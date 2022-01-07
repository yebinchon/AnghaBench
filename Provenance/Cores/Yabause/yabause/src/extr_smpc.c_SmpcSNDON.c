
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* OREG; } ;


 int M68KStart () ;
 TYPE_1__* SmpcRegs ;

__attribute__((used)) static void SmpcSNDON(void) {
   M68KStart();
   SmpcRegs->OREG[31] = 0x6;
}
