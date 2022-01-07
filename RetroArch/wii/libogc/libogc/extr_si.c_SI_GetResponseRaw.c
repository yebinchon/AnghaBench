
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;


 int SISR_RDST ;
 int SI_GetStatus (size_t) ;
 int * _siReg ;
 int ** inputBuffer ;
 int* inputBufferValid ;

u32 SI_GetResponseRaw(s32 chan)
{
 u32 status,ret;
 ret = 0;
 status = SI_GetStatus(chan);
 if(status&SISR_RDST) {
  inputBuffer[chan][0] = _siReg[(chan*3)+1];
  inputBuffer[chan][1] = _siReg[(chan*3)+2];
  inputBufferValid[chan] = 1;
  ret = 1;
 }
 return ret;
}
