
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef size_t s32 ;


 int SI_GetResponseRaw (size_t) ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 scalar_t__** inputBuffer ;
 scalar_t__* inputBufferValid ;

u32 SI_GetResponse(s32 chan,void *buf)
{
 u32 level,valid;
 _CPU_ISR_Disable(level);
 SI_GetResponseRaw(chan);
 valid = inputBufferValid[chan];
 inputBufferValid[chan] = 0;
 if(valid) {
  ((u32*)buf)[0] = inputBuffer[chan][0];
  ((u32*)buf)[1] = inputBuffer[chan][1];
 }
 _CPU_ISR_Restore(level);
 return valid;
}
