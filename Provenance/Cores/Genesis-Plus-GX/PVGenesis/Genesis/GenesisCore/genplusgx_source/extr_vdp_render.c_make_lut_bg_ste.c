
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static uint32 make_lut_bg_ste(uint32 bx, uint32 ax)
{
  int bf = (bx & 0x7F);
  int bp = (bx & 0x40);
  int b = (bx & 0x0F);

  int af = (ax & 0x7F);
  int ap = (ax & 0x40);
  int a = (ax & 0x0F);

  int c = (ap ? (a ? af : bf) : (bp ? (b ? bf : af) : (a ? af : bf)));


  c |= ((ap | bp) << 1);


  if((c & 0x0F) == 0x00) c &= 0x80;

  return (c);
}
