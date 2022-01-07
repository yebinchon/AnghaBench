
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cycles; } ;


 int CM_compareRun (int,int ) ;
 int CycloneRun (TYPE_1__*) ;
 TYPE_1__ PicoCpuCM68k ;
 int SekCycleAim ;
 int SekCycleCnt ;
 int fm68k_emulate (int,int ) ;
 int m68k_execute (int) ;

void SekStepM68k(void)
{
  SekCycleAim=SekCycleCnt+1;
}
