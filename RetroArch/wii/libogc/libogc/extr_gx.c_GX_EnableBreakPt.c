
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cpCRreg; } ;


 int MEM_VIRTUAL_TO_PHYSICAL (void*) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int _SHIFTL (int ,int ,int) ;
 int _SHIFTR (int ,int,int) ;
 int __GX_FifoReadDisable () ;
 int __GX_FifoReadEnable () ;
 TYPE_1__* __gx ;
 int* _cpReg ;
 void* _gxcurrbp ;

void GX_EnableBreakPt(void *break_pt)
{
 u32 level = 0;
 _CPU_ISR_Disable(level);
 __GX_FifoReadDisable();
 _cpReg[30] = _SHIFTL(MEM_VIRTUAL_TO_PHYSICAL(break_pt),0,16);
 _cpReg[31] = _SHIFTR(MEM_VIRTUAL_TO_PHYSICAL(break_pt),16,16);
 __gx->cpCRreg = (__gx->cpCRreg&~0x22)|0x22;
 _cpReg[1] = __gx->cpCRreg;
 _gxcurrbp = break_pt;
 __GX_FifoReadEnable();
  _CPU_ISR_Restore(level);
}
