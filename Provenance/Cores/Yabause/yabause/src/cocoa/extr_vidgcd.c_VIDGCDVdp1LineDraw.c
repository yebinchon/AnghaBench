
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ s16 ;
typedef int Vdp1 ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ localY; scalar_t__ localX; } ;


 int DrawLine (int,int,int,int,int ,int ,double,double,double) ;
 scalar_t__ T1ReadWord (int ,scalar_t__) ;
 int Vdp1Ram ;
 int Vdp1ReadCommand (int *,scalar_t__,int ) ;
 TYPE_1__* Vdp1Regs ;
 int cmd ;
 int getlinelength (int,int,int,int) ;
 int gouraudA ;
 int gouraudB ;
 int gouraudLineSetup (double*,double*,double*,int,int ,int ) ;

void VIDGCDVdp1LineDraw(u8 * ram, Vdp1 * regs, u8* back_framebuffer)
{
 int x1, y1, x2, y2;
 double redstep = 0, greenstep = 0, bluestep = 0;
 int length;

 Vdp1ReadCommand(&cmd, Vdp1Regs->addr, Vdp1Ram);

 x1 = (int)Vdp1Regs->localX + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x0C));
 y1 = (int)Vdp1Regs->localY + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x0E));
 x2 = (int)Vdp1Regs->localX + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x10));
 y2 = (int)Vdp1Regs->localY + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x12));

 length = getlinelength(x1, y1, x2, y2);
 gouraudLineSetup(&redstep,&bluestep,&greenstep,length, gouraudA, gouraudB);
 DrawLine(x1, y1, x2, y2, 0,0,redstep,greenstep,bluestep);
}
