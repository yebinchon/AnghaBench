
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int PRINA; int PRINB; int PRIR; int TVMD; } ;
struct TYPE_3__ {scalar_t__* priosused; } ;


 int VIDGCDVdp2SetPriorityNBG0 (int) ;
 int VIDGCDVdp2SetPriorityNBG1 (int) ;
 int VIDGCDVdp2SetPriorityNBG2 (int) ;
 int VIDGCDVdp2SetPriorityNBG3 (int) ;
 int VIDGCDVdp2SetPriorityRBG0 (int) ;
 int VIDGCDVdp2SetResolution (int ) ;
 int Vdp1DrawPriority (int) ;
 int Vdp2DrawNBG0 () ;
 int Vdp2DrawNBG1 () ;
 int Vdp2DrawNBG2 () ;
 int Vdp2DrawNBG3 () ;
 int Vdp2DrawRBG0 () ;
 TYPE_2__* Vdp2Regs ;
 int nbg0priority ;
 int nbg1priority ;
 int nbg2priority ;
 int nbg3priority ;
 int rbg0priority ;
 TYPE_1__ vdp1draw_info ;

void VIDGCDVdp2DrawScreens(void)
{
   int i;

   VIDGCDVdp2SetResolution(Vdp2Regs->TVMD);
   VIDGCDVdp2SetPriorityNBG0(Vdp2Regs->PRINA & 0x7);
   VIDGCDVdp2SetPriorityNBG1((Vdp2Regs->PRINA >> 8) & 0x7);
   VIDGCDVdp2SetPriorityNBG2(Vdp2Regs->PRINB & 0x7);
   VIDGCDVdp2SetPriorityNBG3((Vdp2Regs->PRINB >> 8) & 0x7);
   VIDGCDVdp2SetPriorityRBG0(Vdp2Regs->PRIR & 0x7);


    for(i = 1; i < 8; ++i)
    {
        if (nbg3priority == i)
            Vdp2DrawNBG3();
        if (nbg2priority == i)
            Vdp2DrawNBG2();
        if (nbg1priority == i)
            Vdp2DrawNBG1();
        if (nbg0priority == i)
            Vdp2DrawNBG0();
        if (rbg0priority == i)
            Vdp2DrawRBG0();


        if(vdp1draw_info.priosused[i])
            Vdp1DrawPriority(i);
        vdp1draw_info.priosused[i] = 0;
    }
}
