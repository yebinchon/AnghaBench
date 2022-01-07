
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int _SHIFTR (int ,int,int) ;
 int * _dspReg ;

u16 AUDIO_GetDMAEnableFlag()
{
 return (_SHIFTR(_dspReg[27],15,1));
}
