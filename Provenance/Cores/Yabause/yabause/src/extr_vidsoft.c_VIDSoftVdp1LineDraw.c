
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vdp1cmd_struct ;
typedef int u8 ;
typedef scalar_t__ s16 ;
struct TYPE_6__ {int addr; scalar_t__ localY; scalar_t__ localX; } ;
typedef TYPE_1__ Vdp1 ;


 int DrawLine (int,int,int,int,int ,int ,int ,double,double,double,TYPE_1__*,int *,int *,int *) ;
 scalar_t__ T1ReadWord (int *,int ) ;
 int Vdp1ReadCommand (int *,int ,int *) ;
 int gouraudA ;
 int gouraudB ;
 int gouraudLineSetup (double*,double*,double*,int,int ,int ,int *,TYPE_1__*,int *,int *) ;
 int iterateOverLine (int,int,int,int,int,int *,int *,TYPE_1__*,int *,int *,int *) ;

void VIDSoftVdp1LineDraw(u8* ram, Vdp1*regs, u8* back_framebuffer)
{
 int x1, y1, x2, y2;
 double redstep = 0, greenstep = 0, bluestep = 0;
 int length;
   vdp1cmd_struct cmd;

   Vdp1ReadCommand(&cmd, regs->addr, ram);

 x1 = (int)regs->localX + (int)((s16)T1ReadWord(ram, regs->addr + 0x0C));
 y1 = (int)regs->localY + (int)((s16)T1ReadWord(ram, regs->addr + 0x0E));
 x2 = (int)regs->localX + (int)((s16)T1ReadWord(ram, regs->addr + 0x10));
 y2 = (int)regs->localY + (int)((s16)T1ReadWord(ram, regs->addr + 0x12));

   length = iterateOverLine(x1, y1, x2, y2, 1, ((void*)0), ((void*)0), regs, &cmd, ram, back_framebuffer);
   gouraudLineSetup(&redstep, &bluestep, &greenstep, length, gouraudA, gouraudB, ram, regs, &cmd, back_framebuffer);
   DrawLine(x1, y1, x2, y2, 0, 0, 0, redstep, greenstep, bluestep, regs, &cmd, ram, back_framebuffer);
}
