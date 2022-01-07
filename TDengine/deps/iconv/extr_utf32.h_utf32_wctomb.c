
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucs4_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {int ostate; } ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;

__attribute__((used)) static int
utf32_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (wc < 0x110000 && !(wc >= 0xd800 && wc < 0xe000)) {
    int count = 0;
    if (!conv->ostate) {
      if (n >= 4) {
        r[0] = 0x00;
        r[1] = 0x00;
        r[2] = 0xFE;
        r[3] = 0xFF;
        r += 4; n -= 4; count += 4;
      } else
        return RET_TOOSMALL;
    }
    if (wc < 0x110000) {
      if (n >= 4) {
        r[0] = 0;
        r[1] = (unsigned char) (wc >> 16);
        r[2] = (unsigned char) (wc >> 8);
        r[3] = (unsigned char) wc;
        conv->ostate = 1;
        return count+4;
      } else
        return RET_TOOSMALL;
    }
  }
  return RET_ILUNI;
}
