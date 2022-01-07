
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* cp1046_page00 ;
 unsigned char* cp1046_page06 ;
 unsigned char* cp1046_page25 ;
 unsigned char* cp1046_pagef8 ;
 unsigned char* cp1046_pagefe ;

__attribute__((used)) static int
cp1046_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char c = 0;
  if (wc < 0x0080) {
    *r = wc;
    return 1;
  }
  else if (wc >= 0x0088 && wc < 0x00f8)
    c = cp1046_page00[wc-0x0088];
  else if (wc >= 0x0608 && wc < 0x0670)
    c = cp1046_page06[wc-0x0608];
  else if (wc >= 0x2500 && wc < 0x2520)
    c = cp1046_page25[wc-0x2500];
  else if (wc == 0x25a0)
    c = 0x89;
  else if (wc >= 0xf8f0 && wc < 0xf900)
    c = cp1046_pagef8[wc-0xf8f0];
  else if (wc >= 0xfe70 && wc < 0xff00)
    c = cp1046_pagefe[wc-0xfe70];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
