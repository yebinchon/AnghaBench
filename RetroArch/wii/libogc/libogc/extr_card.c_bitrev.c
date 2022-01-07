
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 bitrev(u32 val)
{
 u32 cnt,val1,ret,shift,shift1;

 cnt = 0;
 ret = 0;
 shift = 1;
 shift1 = 0;
 while(cnt<32) {
  if(cnt<=15) {
   val1 = val&(1<<cnt);
   val1 <<= ((31-cnt)-shift1);
   ret |= val1;
   shift1++;
  } else if(cnt==31) {
   val1 = val>>31;
   ret |= val1;
  } else {
   val1 = 1;
   val1 = val&(1<<cnt);
   val1 >>= shift;
   ret |= val1;
   shift += 2;
  }
  cnt++;
 }
 return ret;
}
