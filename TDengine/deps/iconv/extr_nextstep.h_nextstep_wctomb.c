
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* nextstep_page00 ;
 unsigned char* nextstep_page01 ;
 unsigned char* nextstep_page02 ;
 unsigned char* nextstep_page20 ;
 unsigned char* nextstep_pagefb ;

__attribute__((used)) static int
nextstep_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x00a0 && wc < 0x0100)
    c = nextstep_page00[wc-0x00a0];
  else if (wc >= 0x0130 && wc < 0x0198)
    c = nextstep_page01[wc-0x0130];
  else if (wc >= 0x02c0 && wc < 0x02e0)
    c = nextstep_page02[wc-0x02c0];
  else if (wc >= 0x2010 && wc < 0x2048)
    c = nextstep_page20[wc-0x2010];
  else if (wc >= 0xfb00 && wc < 0xfb08)
    c = nextstep_pagefb[wc-0xfb00];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
