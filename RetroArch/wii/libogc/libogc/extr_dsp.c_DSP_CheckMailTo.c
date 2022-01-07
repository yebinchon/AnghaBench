
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _SHIFTR (int ,int,int) ;
 int * _dspReg ;

u32 DSP_CheckMailTo()
{
 return _SHIFTR(_dspReg[0],15,1);
}
