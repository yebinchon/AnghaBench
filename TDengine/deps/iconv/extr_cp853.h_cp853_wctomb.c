
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* cp853_page00 ;
 unsigned char* cp853_page01 ;
 unsigned char* cp853_page02 ;
 unsigned char* cp853_page25 ;

__attribute__((used)) static int
cp853_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x0100)
    c = cp853_page00[wc-0x00a0];
  else if (wc >= 0x0108 && wc < 0x0180)
    c = cp853_page01[wc-0x0108];
  else if (wc >= 0x02d8 && wc < 0x02e0)
    c = cp853_page02[wc-0x02d8];
  else if (wc == 0x2113)
    c = 0xf2;
  else if (wc >= 0x2500 && wc < 0x25a8)
    c = cp853_page25[wc-0x2500];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
