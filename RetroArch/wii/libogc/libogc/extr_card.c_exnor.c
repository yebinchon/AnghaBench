
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static u32 exnor(u32 a,u32 b)
{
 u32 c,d,e,f,r1,r2,r3,r4;

 c = 0;
 while(c<b) {
  d = (a<<23);
  e = (a<<15);
  f = (a<<7);
  r1 = (a^f);
  r2 = (e^r1);
  r3 = ~(d^r2);
  e = (a<<1);
  r4 = ((r3>>30)&0x02);
  a = (e|r4);
  c++;
 };
 return a;
}
