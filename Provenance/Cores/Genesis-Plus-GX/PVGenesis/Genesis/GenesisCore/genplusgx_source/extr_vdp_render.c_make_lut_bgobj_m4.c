
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static uint32 make_lut_bgobj_m4(uint32 bx, uint32 sx)
{
  int c;

  int bf = (bx & 0x3F);
  int bs = (bx & 0x80);
  int bp = (bx & 0x20);
  int b = (bx & 0x0F);

  int s = (sx & 0x0F);
  int sf = (s | 0x10);


  if(s == 0) return bx;


  if(bs) return bx;


  c = (bp ? (b ? bf : sf) : sf);

  return (c | 0x80);
}
