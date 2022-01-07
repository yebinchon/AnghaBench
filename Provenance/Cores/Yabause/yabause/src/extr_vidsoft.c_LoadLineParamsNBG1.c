
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int specialprimode; int enable; int PlaneAddr; } ;
typedef TYPE_1__ vdp2draw_struct ;
struct TYPE_14__ {int planetbl; } ;
typedef TYPE_2__ screeninfo_struct ;
struct TYPE_15__ {int SFPRMD; int BGON; } ;
typedef TYPE_3__ Vdp2 ;


 int GeneratePlaneAddrTable (TYPE_1__*,int ,int ,TYPE_3__*) ;
 int ReadVdp2ColorOffset (TYPE_3__*,TYPE_1__*,int,int) ;
 TYPE_3__* Vdp2RestoreRegs (int,TYPE_3__*) ;

__attribute__((used)) static void LoadLineParamsNBG1(vdp2draw_struct * info, screeninfo_struct * sinfo, int line, Vdp2* lines)
{
   Vdp2 * regs;

   regs = Vdp2RestoreRegs(line, lines);
   if (regs == ((void*)0)) return;
   ReadVdp2ColorOffset(regs, info, 0x2, 0x2);
   info->specialprimode = (regs->SFPRMD >> 2) & 0x3;
   info->enable = regs->BGON & 0x2;
   GeneratePlaneAddrTable(info, sinfo->planetbl, info->PlaneAddr, regs);
}
