
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CCCTL; int CYCA0L; int CYCA0U; int CYCA1L; int CYCA1U; int CYCB0L; int CYCB0U; int CYCB1L; int CYCB1U; } ;


 int TITAN_BLEND_ADD ;
 int TITAN_BLEND_BOTTOM ;
 int TITAN_BLEND_TOP ;
 size_t TITAN_NBG3 ;
 int TitanSetBlendingMode (int) ;
 int Vdp2DrawBackScreen () ;
 int Vdp2DrawLineScreen () ;
 TYPE_1__* Vdp2Regs ;
 int* bad_cycle_setting ;

void VIDSoftVdp2DrawStart(void)
{
   int titanblendmode = TITAN_BLEND_TOP;
   if (Vdp2Regs->CCCTL & 0x100) titanblendmode = TITAN_BLEND_ADD;
   else if (Vdp2Regs->CCCTL & 0x200) titanblendmode = TITAN_BLEND_BOTTOM;
   TitanSetBlendingMode(titanblendmode);

   Vdp2DrawBackScreen();
   Vdp2DrawLineScreen();


   if (Vdp2Regs->CYCA0L == 0x5566 &&
      Vdp2Regs->CYCA0U == 0x47ff &&
      Vdp2Regs->CYCA1L == 0xffff &&
      Vdp2Regs->CYCA1U == 0xffff &&
      Vdp2Regs->CYCB0L == 0x12ff &&
      Vdp2Regs->CYCB0U == 0x03ff &&
      Vdp2Regs->CYCB1L == 0xffff &&
      Vdp2Regs->CYCB1U == 0xffff)
   {
      bad_cycle_setting[TITAN_NBG3] = 1;
   }
   else
      bad_cycle_setting[TITAN_NBG3] = 0;
}
