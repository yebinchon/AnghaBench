
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Vdp1Reset ) () ;} ;
struct TYPE_3__ {int MODR; scalar_t__ PTMR; } ;


 TYPE_2__* VIDCore ;
 TYPE_1__* Vdp1Regs ;
 int stub1 () ;

void Vdp1Reset(void) {
   Vdp1Regs->PTMR = 0;
   Vdp1Regs->MODR = 0x1000;
   VIDCore->Vdp1Reset();
}
