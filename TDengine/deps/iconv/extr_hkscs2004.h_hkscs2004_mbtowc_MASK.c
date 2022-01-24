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
 unsigned short* hkscs2004_2uni_page87 ; 
 unsigned short* hkscs2004_2uni_page8c ; 
 unsigned short* hkscs2004_2uni_upages ; 

__attribute__((used)) static int
FUNC1 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c1 = s[0];
  if ((c1 == 0x87) || (c1 >= 0x8c && c1 <= 0x8d)) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0xa1 && c2 < 0xff)) {
        unsigned int i = 157 * (c1 - 0x80) + (c2 - (c2 >= 0xa1 ? 0x62 : 0x40));
        ucs4_t wc = 0xfffd;
        unsigned short swc;
        if (i < 1884) {
          if (i < 1157)
            swc = hkscs2004_2uni_page87[i-1099],
            wc = hkscs2004_2uni_upages[swc>>8] | (swc & 0xff);
        } else {
          if (i < 2073)
            swc = hkscs2004_2uni_page8c[i-1884],
            wc = hkscs2004_2uni_upages[swc>>8] | (swc & 0xff);
        }
        if (wc != 0xfffd) {
          *pwc = wc;
          return 2;
        }
      }
      return RET_ILSEQ;
    }
    return FUNC0(0);
  }
  return RET_ILSEQ;
}