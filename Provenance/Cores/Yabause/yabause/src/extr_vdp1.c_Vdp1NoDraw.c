
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ manualchange; } ;
struct TYPE_4__ {int EDSR; scalar_t__ COPR; } ;


 int ScuSendDrawEnd () ;
 TYPE_3__ Vdp1External ;
 int Vdp1FakeDrawCommands (int ,TYPE_1__*) ;
 int Vdp1Ram ;
 TYPE_1__* Vdp1Regs ;

void Vdp1NoDraw(void) {



   Vdp1Regs->EDSR >>= 1;

   Vdp1Regs->COPR = 0;

   Vdp1FakeDrawCommands(Vdp1Ram, Vdp1Regs);


   Vdp1Regs->EDSR |= 2;
   ScuSendDrawEnd();
   Vdp1External.manualchange = 0;
}
