
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rdstintmsk; } ;
struct TYPE_4__ {int val; TYPE_1__ csrmap; } ;
typedef TYPE_2__ sicomcsr ;
typedef scalar_t__ s32 ;


 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int* _siReg ;
 scalar_t__* inputBufferVCount ;

u32 SI_EnablePollingInterrupt(s32 enable)
{
 sicomcsr csr;
 u32 level,ret,i;

 _CPU_ISR_Disable(level);

 ret = 0;
 csr.val = _siReg[13];
 if(csr.csrmap.rdstintmsk) ret = 1;

 if(enable) {
  csr.csrmap.rdstintmsk = 1;
  for(i=0;i<4;i++) inputBufferVCount[i] = 0;
 } else
  csr.csrmap.rdstintmsk = 0;

 csr.val &= 0x7ffffffe;
 _siReg[13] = csr.val;

 _CPU_ISR_Restore(level);
 return ret;
}
