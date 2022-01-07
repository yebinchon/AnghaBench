
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {int istate; } ;


 int RET_SHIFT_ILSEQ (int) ;
 int RET_TOOFEW (int) ;

__attribute__((used)) static int
ucs4_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  state_t state = conv->istate;
  int count = 0;
  for (; n >= 4;) {
    ucs4_t wc = (state
                  ? s[0] + (s[1] << 8) + (s[2] << 16) + (s[3] << 24)
                  : (s[0] << 24) + (s[1] << 16) + (s[2] << 8) + s[3]);
    s += 4; n -= 4; count += 4;
    if (wc == 0x0000feff) {
    } else if (wc == 0xfffe0000u) {
      state ^= 1;
    } else if (wc <= 0x7fffffff) {
      *pwc = wc;
      conv->istate = state;
      return count;
    } else {
      conv->istate = state;
      return RET_SHIFT_ILSEQ(count);
    }
  }
  conv->istate = state;
  return RET_TOOFEW(count);
}
