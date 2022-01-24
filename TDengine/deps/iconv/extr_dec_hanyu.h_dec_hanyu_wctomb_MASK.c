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
  unsigned char buf[3];
  int ret;

  /* Code set 0 (ASCII) */
  ret = FUNC1(conv,r,wc,n);
  if (ret != RET_ILUNI)
    return ret;

  ret = FUNC2(conv,buf,wc,3);
  if (ret != RET_ILUNI) {
    if (ret != 3) FUNC0();

    /* Code set 1 (CNS 11643-1992 Plane 1) */
    if (buf[0] == 1 && (buf[1] != 0x42 || buf[2] < 0x42)) {
      if (n < 2)
        return RET_TOOSMALL;
      r[0] = buf[1]+0x80;
      r[1] = buf[2]+0x80;
      return 2;
    }

    /* Code set 2 (CNS 11643-1992 Plane 2) */
    if (buf[0] == 2) {
      if (n < 2)
        return RET_TOOSMALL;
      r[0] = buf[1]+0x80;
      r[1] = buf[2];
      return 2;
    }

    /* Code set 3 (CNS 11643-1992 Plane 3) */
    if (buf[0] == 3) {
      if (n < 4)
        return RET_TOOSMALL;
      r[0] = 0xc2;
      r[1] = 0xcb;
      r[2] = buf[1]+0x80;
      r[3] = buf[2]+0x80;
      return 4;
    }
  }

  return RET_ILUNI;
}