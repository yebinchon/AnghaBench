
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int DSPCR_AIINT ;
 int DSPCR_ARINT ;
 int DSPCR_DSPINT ;
 int DSPCR_DSPRESET ;
 int DSPCR_RES ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int* _dspReg ;

void DSP_Reset()
{
 u16 old;
 u32 level;

 _CPU_ISR_Disable(level);
 old = _dspReg[5];
 _dspReg[5] = (old&~(DSPCR_AIINT|DSPCR_ARINT|DSPCR_DSPINT))|(DSPCR_DSPRESET|DSPCR_RES);
 _CPU_ISR_Restore(level);
}
