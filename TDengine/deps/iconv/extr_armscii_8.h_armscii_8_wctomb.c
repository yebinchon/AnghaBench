
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* armscii_8_page00 ;
 unsigned char* armscii_8_page00_1 ;
 unsigned char* armscii_8_page05 ;
 unsigned char* armscii_8_page20 ;

__attribute__((used)) static int
armscii_8_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0028) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x0028 && wc < 0x0030)
    c = armscii_8_page00[wc-0x0028];
  else if (wc >= 0x0030 && wc < 0x00a0)
    c = wc;
  else if (wc >= 0x00a0 && wc < 0x00c0)
    c = armscii_8_page00_1[wc-0x00a0];
  else if (wc >= 0x0530 && wc < 0x0590)
    c = armscii_8_page05[wc-0x0530];
  else if (wc >= 0x2010 && wc < 0x2028)
    c = armscii_8_page20[wc-0x2010];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
