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

__attribute__((used)) static int
FUNC3 (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char buf[2];
  int ret;

  /* Code set 0 (ASCII or KS C 5636-1993) */
  ret = FUNC1(conv,r,wc,n);
  if (ret != RET_ILUNI)
    return ret;

  /* Code set 1 (KS C 5601-1992, now KS X 1001:2002) */
  ret = FUNC2(conv,buf,wc,2);
  if (ret != RET_ILUNI) {
    if (ret != 2) FUNC0();
    if (n < 2)
      return RET_TOOSMALL;
    r[0] = buf[0]+0x80;
    r[1] = buf[1]+0x80;
    return 2;
  }

  return RET_ILUNI;
}