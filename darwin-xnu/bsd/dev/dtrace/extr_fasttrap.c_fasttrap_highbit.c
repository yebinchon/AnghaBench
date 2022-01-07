
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;



__attribute__((used)) static int
fasttrap_highbit(ulong_t i)
{
 int h = 1;

 if (i == 0)
  return (0);

 if (i & 0xffffffff00000000ul) {
  h += 32; i >>= 32;
 }

 if (i & 0xffff0000) {
  h += 16; i >>= 16;
 }
 if (i & 0xff00) {
  h += 8; i >>= 8;
 }
 if (i & 0xf0) {
  h += 4; i >>= 4;
 }
 if (i & 0xc) {
  h += 2; i >>= 2;
 }
 if (i & 0x2) {
  h += 1;
 }
 return (h);
}
