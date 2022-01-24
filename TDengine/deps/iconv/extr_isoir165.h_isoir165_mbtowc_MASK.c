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
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC5 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  int ret;

  /* Map full-width pinyin (row 0x28) like half-width pinyin (row 0x2B). */
  if (s[0] == 0x28) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if (c2 >= 0x21 && c2 <= 0x40) {
        unsigned char buf[2];
        buf[0] = 0x2b;
        buf[1] = c2;
        ret = FUNC4(conv,pwc,buf,2);
        if (ret != RET_ILSEQ)
          return ret;
      }
    }
  }
  /* Try the GB2312 -> Unicode table. */
  ret = FUNC2(conv,pwc,s,n);
  if (ret != RET_ILSEQ)
    return ret;
  /* Row 0x2A is GB_1988-80. */
  if (s[0] == 0x2a) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if (c2 >= 0x21 && c2 < 0x7f) {
        int ret = FUNC3(conv,pwc,s+1,1);
        if (ret != 1) FUNC1();
        return 2;
      }
      return RET_ILSEQ;
    }
    return FUNC0(0);
  }
  /* Try the ISO-IR-165 extensions -> Unicode table. */
  ret = FUNC4(conv,pwc,s,n);
  return ret;
}