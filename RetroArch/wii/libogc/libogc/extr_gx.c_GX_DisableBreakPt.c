
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cpCRreg; } ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_1__* __gx ;
 int* _cpReg ;
 int * _gxcurrbp ;

void GX_DisableBreakPt()
{
 u32 level = 0;
 _CPU_ISR_Disable(level);
 __gx->cpCRreg = (__gx->cpCRreg&~0x22);
 _cpReg[1] = __gx->cpCRreg;
 _gxcurrbp = ((void*)0);
 _CPU_ISR_Restore(level);
}
