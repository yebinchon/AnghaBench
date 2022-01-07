
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* iso8859_6_page00 ;
 unsigned char* iso8859_6_page06 ;

__attribute__((used)) static int
iso8859_6_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x00a0) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x00b0)
    c = iso8859_6_page00[wc-0x00a0];
  else if (wc >= 0x0608 && wc < 0x0658)
    c = iso8859_6_page06[wc-0x0608];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
