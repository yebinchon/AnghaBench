
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SPCTL; int WCTLD; int WCTLC; int WCTLB; int WCTLA; } ;


 scalar_t__ IsSpriteWindowEnabled (int ) ;
 TYPE_1__* Vdp2Regs ;

int CanUseSpriteThread()
{

   if ((Vdp2Regs->SPCTL & (1 << 4)) == 0)
      return 1;


   if (IsSpriteWindowEnabled(Vdp2Regs->WCTLA) ||
      IsSpriteWindowEnabled(Vdp2Regs->WCTLB) ||
      IsSpriteWindowEnabled(Vdp2Regs->WCTLC) ||
      IsSpriteWindowEnabled(Vdp2Regs->WCTLD))
   {

      return 0;
   }

   return 1;
}
