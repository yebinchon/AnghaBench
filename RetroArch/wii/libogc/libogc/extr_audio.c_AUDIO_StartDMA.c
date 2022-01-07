
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* _dspReg ;

void AUDIO_StartDMA()
{
 _dspReg[27] = (_dspReg[27]&~0x8000)|0x8000;
}
