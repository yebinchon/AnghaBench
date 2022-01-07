
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int conv_t ;
struct TYPE_10__ {unsigned short used; unsigned short indx; } ;
typedef TYPE_1__ Summary16 ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 unsigned short* big5_2charset ;
 TYPE_1__* big5_uni2indx_page00 ;
 TYPE_1__* big5_uni2indx_page02 ;
 TYPE_1__* big5_uni2indx_page20 ;
 TYPE_1__* big5_uni2indx_page24 ;
 TYPE_1__* big5_uni2indx_page30 ;
 TYPE_1__* big5_uni2indx_page4e ;
 TYPE_1__* big5_uni2indx_pagefa ;
 TYPE_1__* big5_uni2indx_pagefe ;

__attribute__((used)) static int
big5_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (n >= 2) {
    const Summary16 *summary = ((void*)0);
    if (wc >= 0x0000 && wc < 0x0100)
      summary = &big5_uni2indx_page00[(wc>>4)];
    else if (wc >= 0x0200 && wc < 0x0460)
      summary = &big5_uni2indx_page02[(wc>>4)-0x020];
    else if (wc >= 0x2000 && wc < 0x22c0)
      summary = &big5_uni2indx_page20[(wc>>4)-0x200];
    else if (wc >= 0x2400 && wc < 0x2650)
      summary = &big5_uni2indx_page24[(wc>>4)-0x240];
    else if (wc >= 0x3000 && wc < 0x33e0)
      summary = &big5_uni2indx_page30[(wc>>4)-0x300];
    else if (wc >= 0x4e00 && wc < 0x9fb0)
      summary = &big5_uni2indx_page4e[(wc>>4)-0x4e0];
    else if (wc >= 0xfa00 && wc < 0xfa10)
      summary = &big5_uni2indx_pagefa[(wc>>4)-0xfa0];
    else if (wc >= 0xfe00 && wc < 0xff70)
      summary = &big5_uni2indx_pagefe[(wc>>4)-0xfe0];
    if (summary) {
      unsigned short used = summary->used;
      unsigned int i = wc & 0x0f;
      if (used & ((unsigned short) 1 << i)) {
        unsigned short c;

        used &= ((unsigned short) 1 << i) - 1;

        used = (used & 0x5555) + ((used & 0xaaaa) >> 1);
        used = (used & 0x3333) + ((used & 0xcccc) >> 2);
        used = (used & 0x0f0f) + ((used & 0xf0f0) >> 4);
        used = (used & 0x00ff) + (used >> 8);
        c = big5_2charset[summary->indx + used];
        r[0] = (c >> 8); r[1] = (c & 0xff);
        return 2;
      }
    }
    return RET_ILUNI;
  }
  return RET_TOOSMALL;
}
