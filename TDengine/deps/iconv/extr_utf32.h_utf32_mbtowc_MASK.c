#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ucs4_t ;
typedef  int state_t ;
typedef  TYPE_1__* conv_t ;
struct TYPE_3__ {int istate; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  state_t state = conv->istate;
  int count = 0;
  for (; n >= 4;) {
    ucs4_t wc = (state
                  ? s[0] + (s[1] << 8) + (s[2] << 16) + (s[3] << 24)
                  : (s[0] << 24) + (s[1] << 16) + (s[2] << 8) + s[3]);
    count += 4;
    if (wc == 0x0000feff) {
    } else if (wc == 0xfffe0000u) {
      state ^= 1;
    } else {
      if (wc < 0x110000 && !(wc >= 0xd800 && wc < 0xe000)) {
        *pwc = wc;
        conv->istate = state;
        return count;
      } else {
        conv->istate = state;
        return FUNC0(count);
      }
    }
    s += 4; n -= 4;
  }
  conv->istate = state;
  return FUNC1(count);
}