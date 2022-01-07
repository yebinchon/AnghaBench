
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {int flags; scalar_t__ exi_idtime; } ;
typedef TYPE_1__ exibus_priv ;


 int EXI_EXT_BIT ;
 int EXI_EXT_IRQ ;
 int EXI_FLAG_ATTACH ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __exi_clearirqs (size_t,int ,int ,int) ;
 int* _exiReg ;
 int diff_usec (scalar_t__,scalar_t__) ;
 TYPE_1__* eximap ;
 scalar_t__ gettime () ;
 scalar_t__* last_exi_idtime ;

__attribute__((used)) static s32 __exi_probe(s32 nChn)
{
 u64 time;
 s32 ret = 1;
 u32 level;
 u32 val;
 exibus_priv *exi = &eximap[nChn];
 _CPU_ISR_Disable(level);
 val = _exiReg[nChn*5];
 if(!(exi->flags&EXI_FLAG_ATTACH)) {
  if(val&EXI_EXT_IRQ) {
   __exi_clearirqs(nChn,0,0,1);
   exi->exi_idtime = 0;
   last_exi_idtime[nChn] = 0;
  }
  if(_exiReg[nChn*5]&EXI_EXT_BIT) {
   time = gettime();
   if(last_exi_idtime[nChn]==0) last_exi_idtime[nChn] = time;
   if((val=diff_usec(last_exi_idtime[nChn],time)+10)<30) ret = 0;
   else ret = 1;
   _CPU_ISR_Restore(level);
   return ret;
  } else {
   exi->exi_idtime = 0;
   last_exi_idtime[nChn] = 0;
   _CPU_ISR_Restore(level);
   return 0;
  }
 }

 if(!(_exiReg[nChn*5]&EXI_EXT_BIT) || (_exiReg[nChn*5]&EXI_EXT_IRQ)) {
  exi->exi_idtime = 0;
  last_exi_idtime[nChn] = 0;
  ret = 0;
 }
 _CPU_ISR_Restore(level);
 return ret;
}
