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
 int FUNC1 (int /*<<< orphan*/ ,int*,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,unsigned char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC5 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;

  if (c >= 0x81 && c < 0xff) {
    if (n < 2)
      return FUNC0(0);
    if (c >= 0xa1 && c <= 0xf7) {
      unsigned char c2 = s[1];
      if (c == 0xa1) {
        if (c2 == 0xa4) {
          *pwc = 0x00b7;
          return 2;
        }
        if (c2 == 0xaa) {
          *pwc = 0x2014;
          return 2;
        }
      }
      if (c2 >= 0xa1 && c2 < 0xff) {
        unsigned char buf[2];
        int ret;
        buf[0] = c-0x80; buf[1] = c2-0x80;
        ret = FUNC2(conv,pwc,buf,2);
        if (ret != RET_ILSEQ)
          return ret;
        buf[0] = c; buf[1] = c2;
        ret = FUNC1(conv,pwc,buf,2);
        if (ret != RET_ILSEQ)
          return ret;
      }
    }
    if (c >= 0x81 && c <= 0xa0)
      return FUNC3(conv,pwc,s,2);
    if (c >= 0xa8 && c <= 0xfe)
      return FUNC4(conv,pwc,s,2);
    if (c == 0xa2) {
      unsigned char c2 = s[1];
      if (c2 >= 0xa1 && c2 <= 0xaa) {
        *pwc = 0x2170+(c2-0xa1);
        return 2;
      }
    }
  }
  return RET_ILSEQ;
}