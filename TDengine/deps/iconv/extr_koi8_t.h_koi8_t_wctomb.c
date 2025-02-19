
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* koi8_t_page00 ;
 unsigned char* koi8_t_page04 ;
 unsigned char* koi8_t_page20 ;
 unsigned char* koi8_t_page21 ;

__attribute__((used)) static int
koi8_t_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x00c0)
    c = koi8_t_page00[wc-0x00a0];
  else if (wc >= 0x0400 && wc < 0x04f0)
    c = koi8_t_page04[wc-0x0400];
  else if (wc >= 0x2010 && wc < 0x2040)
    c = koi8_t_page20[wc-0x2010];
  else if (wc >= 0x2110 && wc < 0x2128)
    c = koi8_t_page21[wc-0x2110];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
