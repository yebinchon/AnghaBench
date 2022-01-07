
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ resd; } ;
struct TYPE_3__ {int* OREG; } ;


 TYPE_2__* SmpcInternalVars ;
 TYPE_1__* SmpcRegs ;

__attribute__((used)) static void SmpcRESENAB(void) {
  SmpcInternalVars->resd = 0;
  SmpcRegs->OREG[31] = 0x19;
}
