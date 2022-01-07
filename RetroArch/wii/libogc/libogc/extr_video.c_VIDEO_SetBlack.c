
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct _timing {int psbEven; int psbOdd; int prbEven; int prbOdd; int acv; int equ; } ;
struct TYPE_2__ {int black; int dispSizeY; int adjustedDispPosY; struct _timing* timing; } ;


 TYPE_1__ HorVer ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __setVerticalRegs (int ,int ,int ,int ,int ,int ,int ,int ,int) ;

void VIDEO_SetBlack(bool black)
{
 u32 level;
 const struct _timing *curtiming;

 _CPU_ISR_Disable(level);
 HorVer.black = black;
 curtiming = HorVer.timing;
 __setVerticalRegs(HorVer.adjustedDispPosY,HorVer.dispSizeY,curtiming->equ,curtiming->acv,curtiming->prbOdd,curtiming->prbEven,curtiming->psbOdd,curtiming->psbEven,HorVer.black);
 _CPU_ISR_Restore(level);
}
