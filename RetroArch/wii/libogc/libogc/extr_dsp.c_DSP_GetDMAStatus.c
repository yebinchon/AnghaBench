
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DSPCR_DSPDMA ;
 int* _dspReg ;

u32 DSP_GetDMAStatus()
{
 return _dspReg[5]&DSPCR_DSPDMA;
}
