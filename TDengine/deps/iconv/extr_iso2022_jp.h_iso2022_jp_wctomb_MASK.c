#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucs4_t ;
typedef  scalar_t__ state_t ;
typedef  TYPE_1__* conv_t ;
struct TYPE_6__ {scalar_t__ ostate; } ;

/* Variables and functions */
 unsigned char ESC ; 
 int RET_ILUNI ; 
 int RET_TOOSMALL ; 
 scalar_t__ STATE_ASCII ; 
 scalar_t__ STATE_JISX0201ROMAN ; 
 scalar_t__ STATE_JISX0208 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4 (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  state_t state = conv->ostate;
  unsigned char buf[2];
  int ret;

  /* Try ASCII. */
  ret = FUNC1(conv,buf,wc,1);
  if (ret != RET_ILUNI) {
    if (ret != 1) FUNC0();
    if (buf[0] < 0x80) {
      int count = (state == STATE_ASCII ? 1 : 4);
      if (n < count)
        return RET_TOOSMALL;
      if (state != STATE_ASCII) {
        r[0] = ESC;
        r[1] = '(';
        r[2] = 'B';
        r += 3;
        state = STATE_ASCII;
      }
      r[0] = buf[0];
      conv->ostate = state;
      return count;
    }
  }

  /* Try JIS X 0201-1976 Roman. */
  ret = FUNC2(conv,buf,wc,1);
  if (ret != RET_ILUNI) {
    if (ret != 1) FUNC0();
    if (buf[0] < 0x80) {
      int count = (state == STATE_JISX0201ROMAN ? 1 : 4);
      if (n < count)
        return RET_TOOSMALL;
      if (state != STATE_JISX0201ROMAN) {
        r[0] = ESC;
        r[1] = '(';
        r[2] = 'J';
        r += 3;
        state = STATE_JISX0201ROMAN;
      }
      r[0] = buf[0];
      conv->ostate = state;
      return count;
    }
  }

  /* Try JIS X 0208-1990 in place of JIS X 0208-1978 and JIS X 0208-1983. */
  ret = FUNC3(conv,buf,wc,2);
  if (ret != RET_ILUNI) {
    if (ret != 2) FUNC0();
    if (buf[0] < 0x80 && buf[1] < 0x80) {
      int count = (state == STATE_JISX0208 ? 2 : 5);
      if (n < count)
        return RET_TOOSMALL;
      if (state != STATE_JISX0208) {
        r[0] = ESC;
        r[1] = '$';
        r[2] = 'B';
        r += 3;
        state = STATE_JISX0208;
      }
      r[0] = buf[0];
      r[1] = buf[1];
      conv->ostate = state;
      return count;
    }
  }

  return RET_ILUNI;
}