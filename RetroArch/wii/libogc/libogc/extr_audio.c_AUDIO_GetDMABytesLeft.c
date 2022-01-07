
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _SHIFTL (int ,int,int) ;
 int * _dspReg ;

u32 AUDIO_GetDMABytesLeft()
{
 return (_SHIFTL(_dspReg[29],5,15));
}
