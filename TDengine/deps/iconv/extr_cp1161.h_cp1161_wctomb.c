
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* cp1161_page00 ;
 unsigned char* cp874_page0e ;

__attribute__((used)) static int
cp1161_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x00b0)
    c = cp1161_page00[wc-0x00a0];
  else if (wc >= 0x0e48 && wc < 0x0e4c)
    c = wc-0x0d60;
  else if (wc >= 0x0e00 && wc < 0x0e60)
    c = cp874_page0e[wc-0x0e00];
  else if (wc == 0x20ac)
    c = 0xde;
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
