
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* mulelao_page0e ;

__attribute__((used)) static int
mulelao_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x00a0) {
    *r = wc;
    return 1;
  }
  else if (wc == 0x00a0)
    c = 0xa0;
  else if (wc >= 0x0e80 && wc < 0x0ee0)
    c = mulelao_page0e[wc-0x0e80];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
