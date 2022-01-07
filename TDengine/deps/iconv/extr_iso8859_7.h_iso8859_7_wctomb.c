
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* iso8859_7_page00 ;
 unsigned char* iso8859_7_page03 ;
 unsigned char* iso8859_7_page20 ;

__attribute__((used)) static int
iso8859_7_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x00a0) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x00c0)
    c = iso8859_7_page00[wc-0x00a0];
  else if (wc >= 0x0378 && wc < 0x03d0)
    c = iso8859_7_page03[wc-0x0378];
  else if (wc >= 0x2010 && wc < 0x2020)
    c = iso8859_7_page20[wc-0x2010];
  else if (wc == 0x20ac)
    c = 0xa4;
  else if (wc == 0x20af)
    c = 0xa5;
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
