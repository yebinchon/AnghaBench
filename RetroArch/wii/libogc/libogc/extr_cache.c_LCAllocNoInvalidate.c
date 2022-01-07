
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FALSE ;
 int LCAllocTags (int ,void*,int) ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __LCEnable () ;
 int mfspr (int) ;

void LCAllocNoInvalidate(void *addr,u32 bytes)
{
 u32 level;
 u32 cnt = bytes>>5;
 u32 hid2 = mfspr(920);
 if(!(hid2&0x10000000)) {
  _CPU_ISR_Disable(level);
  __LCEnable();
  _CPU_ISR_Restore(level);
 }
 LCAllocTags(FALSE,addr,cnt);
}
