
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int TVMD; } ;


 int VIDSoftVdp2SetResolution (int ) ;
 int Vdp2ColorRam ;
 int Vdp2DrawNBG0 (int ,TYPE_1__*,int ,int ,int ) ;
 int Vdp2DrawNBG1 (int ,TYPE_1__*,int ,int ,int ) ;
 int Vdp2DrawNBG2 (int ,TYPE_1__*,int ,int ,int ) ;
 int Vdp2DrawNBG3 (int ,TYPE_1__*,int ,int ,int ) ;
 int Vdp2DrawRBG0 (int ,TYPE_1__*,int ,int ,int ) ;
 int Vdp2Lines ;
 int Vdp2Ram ;
 TYPE_1__* Vdp2Regs ;
 int cell_scroll_data ;

void VIDSoftVdp2DrawScreen(int screen)
{
   VIDSoftVdp2SetResolution(Vdp2Regs->TVMD);

   switch(screen)
   {
      case 0:
         Vdp2DrawNBG0(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
      case 1:
         Vdp2DrawNBG1(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
      case 2:
         Vdp2DrawNBG2(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
      case 3:
         Vdp2DrawNBG3(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
      case 4:
         Vdp2DrawRBG0(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
   }
}
