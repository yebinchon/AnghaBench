
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* _dspReg ;

u32 AUDIO_GetDMALength()
{
 return ((_dspReg[27]&0x7fff)<<5);
}
