
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* Vdp1DrawEnd ) () ;int (* Vdp1DrawStart ) () ;} ;
struct TYPE_5__ {int disptoggle; } ;
struct TYPE_4__ {int addr; int EDSR; int COPR; } ;


 int ScuSendDrawEnd () ;
 TYPE_3__* VIDCore ;
 TYPE_2__ Vdp1External ;
 int Vdp1NoDraw () ;
 TYPE_1__* Vdp1Regs ;
 int stub1 () ;
 int stub2 () ;

void Vdp1Draw(void)
{
   if (!Vdp1External.disptoggle)
   {
      Vdp1NoDraw();
      return;
   }

   Vdp1Regs->addr = 0;




   Vdp1Regs->EDSR >>= 1;

   Vdp1Regs->COPR = 0;

   VIDCore->Vdp1DrawStart();


   Vdp1Regs->EDSR |= 2;
   Vdp1Regs->COPR = Vdp1Regs->addr >> 3;
   ScuSendDrawEnd();
   VIDCore->Vdp1DrawEnd();
}
