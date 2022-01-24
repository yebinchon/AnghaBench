#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucs4_t ;
typedef  int state_t ;
typedef  TYPE_1__* conv_t ;
struct TYPE_7__ {int istate; } ;

/* Variables and functions */
 unsigned char ESC ; 
 int RET_ILSEQ ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  STATE_ASCII 131 
#define  STATE_JISX0201ROMAN 130 
#define  STATE_JISX0208 129 
#define  STATE_JISX0212 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC7 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  state_t state = conv->istate;
  int count = 0;
  unsigned char c;
  for (;;) {
    c = *s;
    if (c == ESC) {
      if (n < count+3)
        goto none;
      if (s[1] == '(') {
        if (s[2] == 'B') {
          state = STATE_ASCII;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == 'J') {
          state = STATE_JISX0201ROMAN;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        goto ilseq;
      }
      if (s[1] == '$') {
        if (s[2] == '@' || s[2] == 'B') {
          /* We don't distinguish JIS X 0208-1978 and JIS X 0208-1983. */
          state = STATE_JISX0208;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == '(') {
          if (n < count+4)
            goto none;
          if (s[3] == 'D') {
            state = STATE_JISX0212;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
        }
        goto ilseq;
      }
      goto ilseq;
    }
    break;
  }
  switch (state) {
    case STATE_ASCII:
      if (c < 0x80) {
        int ret = FUNC3(conv,pwc,s,1);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 1) FUNC2();
        conv->istate = state;
        return count+1;
      } else
        goto ilseq;
    case STATE_JISX0201ROMAN:
      if (c < 0x80) {
        int ret = FUNC4(conv,pwc,s,1);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 1) FUNC2();
        conv->istate = state;
        return count+1;
      } else
        goto ilseq;
    case STATE_JISX0208:
      if (n < count+2)
        goto none;
      if (s[0] < 0x80 && s[1] < 0x80) {
        int ret = FUNC5(conv,pwc,s,2);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 2) FUNC2();
        conv->istate = state;
        return count+2;
      } else
        goto ilseq;
    case STATE_JISX0212:
      if (n < count+2)
        goto none;
      if (s[0] < 0x80 && s[1] < 0x80) {
        int ret = FUNC6(conv,pwc,s,2);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 2) FUNC2();
        conv->istate = state;
        return count+2;
      } else
        goto ilseq;
    default: FUNC2();
  }

none:
  conv->istate = state;
  return FUNC1(count);

ilseq:
  conv->istate = state;
  return FUNC0(count);
}