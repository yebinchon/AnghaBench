
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _SHIFTR (int,int,int) ;
 int* _dspReg ;

void DSP_SendMailTo(u32 mail)
{
 _dspReg[0] = _SHIFTR(mail,16,16);
 _dspReg[1] = (mail&0xffff);
}
