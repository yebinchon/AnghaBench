#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ucs4_t ;
typedef  int /*<<< orphan*/  conv_t ;

/* Variables and functions */
 int RET_ILUNI ; 
 int RET_TOOSMALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4 (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char buf[2];
  int ret;

  /* Try the Unicode -> GB2312 table. */
  ret = FUNC1(conv,buf,wc,2);
  if (ret != RET_ILUNI) {
    if (ret != 2) FUNC0();
    if (!(buf[0] == 0x28 && buf[1] >= 0x21 && buf[1] <= 0x40)) {
      if (n >= 2) {
        r[0] = buf[0];
        r[1] = buf[1];
        return 2;
      }
      return RET_TOOSMALL;
    }
  }
  /* Row 0x2A is GB_1988-80. */
  ret = FUNC2(conv,buf,wc,1);
  if (ret != RET_ILUNI) {
    if (ret != 1) FUNC0();
    if (buf[0] >= 0x21 && buf[0] < 0x7f) {
      if (n >= 2) {
        r[0] = 0x2a;
        r[1] = buf[0];
        return 2;
      }
      return RET_TOOSMALL;
    }
  }
  /* Try the Unicode -> ISO-IR-165 extensions table. */
  ret = FUNC3(conv,r,wc,n);
  return ret;
}