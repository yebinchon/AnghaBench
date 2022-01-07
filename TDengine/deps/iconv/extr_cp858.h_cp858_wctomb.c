
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* cp850_page00 ;
 unsigned char* cp850_page25 ;

__attribute__((used)) static int
cp858_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x0100)
    c = cp850_page00[wc-0x00a0];
  else if (wc == 0x0192)
    c = 0x9f;
  else if (wc == 0x2017)
    c = 0xf2;
  else if (wc == 0x20ac)
    c = 0xd5;
  else if (wc >= 0x2500 && wc < 0x25a8)
    c = cp850_page25[wc-0x2500];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
