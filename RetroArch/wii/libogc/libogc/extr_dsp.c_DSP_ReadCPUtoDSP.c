
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _SHIFTL (int,int,int) ;
 int* _dspReg ;

u32 DSP_ReadCPUtoDSP()
{
 u32 cpu_dsp;
 cpu_dsp = (_SHIFTL(_dspReg[0],16,16)|(_dspReg[1]&0xffff));
 return cpu_dsp;
}
