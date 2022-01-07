
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int conv_t ;
struct TYPE_3__ {unsigned short used; scalar_t__ indx; } ;
typedef TYPE_1__ Summary16 ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 unsigned short* uhc_1_2charset ;
 unsigned short* uhc_1_2charset_main ;
 TYPE_1__* uhc_1_uni2indx_pageac ;

__attribute__((used)) static int
uhc_1_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (n >= 2) {
    if (wc >= 0xac00 && wc < 0xc8b0) {
      const Summary16 *summary = &uhc_1_uni2indx_pageac[(wc>>4)-0xac0];
      unsigned short used = summary->used;
      unsigned int i = wc & 0x0f;
      if (used & ((unsigned short) 1 << i)) {
        unsigned short c;

        used &= ((unsigned short) 1 << i) - 1;

        used = (used & 0x5555) + ((used & 0xaaaa) >> 1);
        used = (used & 0x3333) + ((used & 0xcccc) >> 2);
        used = (used & 0x0f0f) + ((used & 0xf0f0) >> 4);
        used = (used & 0x00ff) + (used >> 8);
        used += summary->indx;
        c = uhc_1_2charset_main[used>>7] + uhc_1_2charset[used];
        r[0] = (c >> 8); r[1] = (c & 0xff);
        return 2;
      }
    }
    return RET_ILUNI;
  }
  return RET_TOOSMALL;
}
