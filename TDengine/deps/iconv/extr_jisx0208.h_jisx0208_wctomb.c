
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int conv_t ;
struct TYPE_9__ {unsigned short used; unsigned short indx; } ;
typedef TYPE_1__ Summary16 ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 unsigned short* jisx0208_2charset ;
 TYPE_1__* jisx0208_uni2indx_page00 ;
 TYPE_1__* jisx0208_uni2indx_page03 ;
 TYPE_1__* jisx0208_uni2indx_page20 ;
 TYPE_1__* jisx0208_uni2indx_page25 ;
 TYPE_1__* jisx0208_uni2indx_page30 ;
 TYPE_1__* jisx0208_uni2indx_page4e ;
 TYPE_1__* jisx0208_uni2indx_pageff ;

__attribute__((used)) static int
jisx0208_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (n >= 2) {
    const Summary16 *summary = ((void*)0);
    if (wc >= 0x0000 && wc < 0x0100)
      summary = &jisx0208_uni2indx_page00[(wc>>4)];
    else if (wc >= 0x0300 && wc < 0x0460)
      summary = &jisx0208_uni2indx_page03[(wc>>4)-0x030];
    else if (wc >= 0x2000 && wc < 0x2320)
      summary = &jisx0208_uni2indx_page20[(wc>>4)-0x200];
    else if (wc >= 0x2500 && wc < 0x2670)
      summary = &jisx0208_uni2indx_page25[(wc>>4)-0x250];
    else if (wc >= 0x3000 && wc < 0x3100)
      summary = &jisx0208_uni2indx_page30[(wc>>4)-0x300];
    else if (wc >= 0x4e00 && wc < 0x9fb0)
      summary = &jisx0208_uni2indx_page4e[(wc>>4)-0x4e0];
    else if (wc >= 0xff00 && wc < 0xfff0)
      summary = &jisx0208_uni2indx_pageff[(wc>>4)-0xff0];
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
        c = jisx0208_2charset[summary->indx + used];
        r[0] = (c >> 8); r[1] = (c & 0xff);
        return 2;
      }
    }
    return RET_ILUNI;
  }
  return RET_TOOSMALL;
}
