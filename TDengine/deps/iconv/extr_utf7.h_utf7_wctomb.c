
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int ucs4_t ;
typedef int state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {int ostate; } ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 scalar_t__ UTF7_ENCODE_OPTIONAL_CHARS ;
 int abort () ;
 scalar_t__ isdirect (unsigned int) ;
 scalar_t__ isxbase64 (unsigned int) ;
 scalar_t__ isxdirect (unsigned int) ;

__attribute__((used)) static int
utf7_wctomb (conv_t conv, unsigned char *r, ucs4_t iwc, int n)
{
  state_t state = conv->ostate;
  unsigned int wc = iwc;
  int count = 0;
  if (state & 3)
    goto active;


  {
    if (UTF7_ENCODE_OPTIONAL_CHARS ? isdirect(wc) : isxdirect(wc)) {
      r[0] = (unsigned char) wc;

      return 1;
    } else {
      *r++ = '+';
      if (wc == '+') {
        if (n < 2)
          return RET_TOOSMALL;
        *r = '-';

        return 2;
      }
      count = 1;
      state = 1;
      goto active;
    }
  }

active:
  {

    if (UTF7_ENCODE_OPTIONAL_CHARS ? isdirect(wc) : isxdirect(wc)) {

      count += ((state & 3) >= 2 ? 1 : 0) + (isxbase64(wc) ? 1 : 0) + 1;
      if (n < count)
        return RET_TOOSMALL;
      if ((state & 3) >= 2) {
        unsigned int i = state & -4;
        unsigned char c;
        if (i < 26)
          c = i+'A';
        else if (i < 52)
          c = i-26+'a';
        else if (i < 62)
          c = i-52+'0';
        else if (i == 62)
          c = '+';
        else if (i == 63)
          c = '/';
        else
          abort();
        *r++ = c;
      }
      if (isxbase64(wc))
        *r++ = '-';
      state = 0;
      *r++ = (unsigned char) wc;
      conv->ostate = state;
      return count;
    } else {
      unsigned int k;
      if (wc < 0x10000) {
        k = 2;
        count += ((state & 3) >= 2 ? 3 : 2);
      } else if (wc < 0x110000) {
        unsigned int wc1 = 0xd800 + ((wc - 0x10000) >> 10);
        unsigned int wc2 = 0xdc00 + ((wc - 0x10000) & 0x3ff);
        wc = (wc1 << 16) | wc2;
        k = 4;
        count += ((state & 3) >= 3 ? 6 : 5);
      } else
        return RET_ILUNI;
      if (n < count)
        return RET_TOOSMALL;
      for (;;) {
        unsigned int i;
        unsigned char c;
        switch (state & 3) {
          case 0:
            c = (state & -4) >> 2; state = 1; break;
          case 1:
            i = (wc >> (8 * --k)) & 0xff;
            c = i >> 2; state = ((i & 3) << 4) | 2; break;
          case 2:
            i = (wc >> (8 * --k)) & 0xff;
            c = (state & -4) | (i >> 4); state = ((i & 15) << 2) | 3; break;
          case 3:
            i = (wc >> (8 * --k)) & 0xff;
            c = (state & -4) | (i >> 6); state = ((i & 63) << 2) | 0; break;
          default: abort();
        }
        if (c < 26)
          c = c+'A';
        else if (c < 52)
          c = c-26+'a';
        else if (c < 62)
          c = c-52+'0';
        else if (c == 62)
          c = '+';
        else if (c == 63)
          c = '/';
        else
          abort();
        *r++ = c;
        if ((state & 3) && (k == 0))
          break;
      }
      conv->ostate = state;
      return count;
    }
  }
}
