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
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC3 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  /* Code set 0 (ASCII) */
  if (c < 0x80)
    return FUNC1(conv,pwc,s,n);
  /* Code set 1 (BIG5) */
  if (c >= 0xa1 && c < 0xff) {
    if (n < 2)
      return FUNC0(0);
    {
      unsigned char c2 = s[1];
      if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0xa1 && c2 < 0xff))
        return FUNC2(conv,pwc,s,2);
      else
        return RET_ILSEQ;
    }
  }
  return RET_ILSEQ;
}