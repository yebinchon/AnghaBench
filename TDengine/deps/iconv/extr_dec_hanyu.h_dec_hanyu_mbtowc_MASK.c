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
 int RET_ILSEQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC6 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  /* Code set 0 (ASCII) */
  if (c < 0x80)
    return FUNC2(conv,pwc,s,n);
  /* Code set 1 (CNS 11643-1992 Plane 1),
     Code set 2 (CNS 11643-1992 Plane 2),
     Code set 3 (CNS 11643-1992 Plane 3) */
  if (c >= 0xa1 && c < 0xff) {
    if (n < 2)
      return FUNC0(0);
    {
      unsigned char c2 = s[1];
      if (c == 0xc2 && c2 == 0xcb) {
        if (n < 4)
          return FUNC0(0);
        if (s[2] >= 0xa1 && s[2] < 0xff && s[3] >= 0xa1 && s[3] < 0xff) {
          unsigned char buf[2];
          int ret;
          buf[0] = s[2]-0x80; buf[1] = s[3]-0x80;
          ret = FUNC5(conv,pwc,buf,2);
          if (ret != RET_ILSEQ) {
            if (ret != 2) FUNC1();
            return 4;
          }
        }
      } else if (c2 >= 0xa1 && c2 < 0xff) {
        if (c != 0xc2 || c2 < 0xc2) {
          unsigned char buf[2];
          buf[0] = c-0x80; buf[1] = c2-0x80;
          return FUNC3(conv,pwc,buf,2);
        }
      } else if (c2 >= 0x21 && c2 < 0x7f) {
        unsigned char buf[2];
        buf[0] = c-0x80; buf[1] = c2;
        return FUNC4(conv,pwc,buf,2);
      }
    }
  }
  return RET_ILSEQ;
}