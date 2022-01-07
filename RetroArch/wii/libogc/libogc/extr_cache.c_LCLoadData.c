
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s32 ;


 int LCLoadBlocks (void*,void*,int) ;

u32 LCLoadData(void *dstAddr,void *srcAddr,u32 nCount)
{
 u32 cnt,blocks;

 if((s32)nCount<=0) return 0;

 cnt = (nCount+31)>>5;
 blocks = (cnt+127)>>7;
 while(cnt) {
  if(cnt<0x80) {
   LCLoadBlocks(dstAddr,srcAddr,cnt);
   cnt = 0;
   break;
  }
  LCLoadBlocks(dstAddr,srcAddr,0);
  cnt -= 128;
  dstAddr += 4096;
  srcAddr += 4096;
 }
 return blocks;
}
