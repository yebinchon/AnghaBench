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
typedef  int ucs4_t ;
typedef  int /*<<< orphan*/  conv_t ;

/* Variables and functions */
 int RET_ILSEQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,unsigned char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,unsigned char const*,int) ; 
 unsigned short* cp950_2uni_pagea1 ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC4 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  /* Code set 0 (ASCII) */
  if (c < 0x80)
    return FUNC1(conv,pwc,s,n);
  /* Code set 1 (BIG5 extended) */
  if (c >= 0x81 && c < 0xff) {
    if (n < 2)
      return FUNC0(0);
    {
      unsigned char c2 = s[1];
      if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0xa1 && c2 < 0xff)) {
        if (c >= 0xa1) {
          if (c < 0xa3) {
            unsigned int i = 157 * (c - 0xa1) + (c2 - (c2 >= 0xa1 ? 0x62 : 0x40));
            unsigned short wc = cp950_2uni_pagea1[i];
            if (wc != 0xfffd) {
              *pwc = (ucs4_t) wc;
              return 2;
            }
          }
          if (!((c == 0xc6 && c2 >= 0xa1) || c == 0xc7)) {
            int ret = FUNC2(conv,pwc,s,2);
            if (ret != RET_ILSEQ)
              return ret;
          }
          if (c == 0xa3 && c2 == 0xe1) {
            *pwc = 0x20ac;
            return 2;
          }
          if (c >= 0xfa) {
            /* User-defined characters */
            *pwc = 0xe000 + 157 * (c - 0xfa) + (c2 - (c2 >= 0xa1 ? 0x62 : 0x40));
            return 2;
          }
        } else {
          /* 0x81 <= c < 0xa1. */
          /* User-defined characters */
          *pwc = (c >= 0x8e ? 0xdb18 : 0xeeb8) + 157 * (c - 0x81)
                 + (c2 - (c2 >= 0xa1 ? 0x62 : 0x40));
          return 2;
        }
      }
    }
    if (c == 0xf9) {
      int ret = FUNC3(conv,pwc,s,2);
      if (ret != RET_ILSEQ)
        return ret;
    }
  }
  return RET_ILSEQ;
}