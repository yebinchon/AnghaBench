
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DSPCR_DSPDMA ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int* _dspReg ;

u32 AR_GetDMAStatus()
{
 u32 level,ret;
 _CPU_ISR_Disable(level);
 ret = ((_dspReg[5]&DSPCR_DSPDMA)==DSPCR_DSPDMA);
 _CPU_ISR_Restore(level);
 return ret;
}
