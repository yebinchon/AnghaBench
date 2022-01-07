
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
 int gouraudC ;
 int gouraudD ;
 int gouraudLineSetup (double*,double*,double*,int,int ,int ) ;

void VIDGCDVdp1PolylineDraw(u8 * ram, Vdp1 * regs, u8* back_framebuffer)
{
 int X[4];
 int Y[4];
 double redstep = 0, greenstep = 0, bluestep = 0;
 int length;

 Vdp1ReadCommand(&cmd, Vdp1Regs->addr, Vdp1Ram);

 X[0] = (int)Vdp1Regs->localX + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x0C));
 Y[0] = (int)Vdp1Regs->localY + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x0E));
 X[1] = (int)Vdp1Regs->localX + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x10));
 Y[1] = (int)Vdp1Regs->localY + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x12));
 X[2] = (int)Vdp1Regs->localX + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x14));
 Y[2] = (int)Vdp1Regs->localY + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x16));
 X[3] = (int)Vdp1Regs->localX + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x18));
 Y[3] = (int)Vdp1Regs->localY + (int)((s16)T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x1A));

 length = getlinelength(X[0], Y[0], X[1], Y[1]);
 gouraudLineSetup(&redstep,&greenstep,&bluestep,length, gouraudA, gouraudB);
 DrawLine(X[0], Y[0], X[1], Y[1], 0,0,redstep,greenstep,bluestep);

 length = getlinelength(X[1], Y[1], X[2], Y[2]);
 gouraudLineSetup(&redstep,&greenstep,&bluestep,length, gouraudB, gouraudC);
 DrawLine(X[1], Y[1], X[2], Y[2], 0,0,redstep,greenstep,bluestep);

 length = getlinelength(X[2], Y[2], X[3], Y[3]);
 gouraudLineSetup(&redstep,&greenstep,&bluestep,length, gouraudD, gouraudC);
 DrawLine(X[3], Y[3], X[2], Y[2], 0,0,redstep,greenstep,bluestep);

 length = getlinelength(X[3], Y[3], X[0], Y[0]);
 gouraudLineSetup(&redstep,&greenstep,&bluestep,length, gouraudA,gouraudD);
 DrawLine(X[0], Y[0], X[3], Y[3], 0,0,redstep,greenstep,bluestep);
}
