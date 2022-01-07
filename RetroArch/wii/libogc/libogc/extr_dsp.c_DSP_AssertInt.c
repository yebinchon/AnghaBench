
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DSPCR_AIINT ;
 int DSPCR_ARINT ;
 int DSPCR_DSPINT ;
 int DSPCR_PIINT ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int* _dspReg ;

void DSP_AssertInt()
{
 u32 level;
 _CPU_ISR_Disable(level);
 _dspReg[5] = (_dspReg[5]&~(DSPCR_AIINT|DSPCR_ARINT|DSPCR_DSPINT))|DSPCR_PIINT;
 _CPU_ISR_Restore(level);
}
