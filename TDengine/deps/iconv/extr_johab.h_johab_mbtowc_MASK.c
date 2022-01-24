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
typedef  scalar_t__ ucs4_t ;
typedef  int /*<<< orphan*/  conv_t ;

/* Variables and functions */
 int RET_ILSEQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*,unsigned char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC3 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0x80) {
    if (c == 0x5c)
      *pwc = (ucs4_t) 0x20a9;
    else
      *pwc = (ucs4_t) c;
    return 1;
  } else if (c < 0xd8) {
    return FUNC1(conv,pwc,s,n);
  } else {
    unsigned char s1, s2;
    s1 = c;
    if ((s1 >= 0xd9 && s1 <= 0xde) || (s1 >= 0xe0 && s1 <= 0xf9)) {
      if (n < 2)
        return FUNC0(0);
      s2 = s[1];
      if ((s2 >= 0x31 && s2 <= 0x7e) || (s2 >= 0x91 && s2 <= 0xfe)) {
        /* In KSC 5601, now KS X 1001, the region s1 = 0xDA, 0xA1 <= s2 <= 0xD3
           contains the 51 Jamo (Hangul letters). But in the Johab encoding,
           they have been moved to the Hangul section, see
           johab_hangul_page31. */
        if (!(s1 == 0xda && (s2 >= 0xa1 && s2 <= 0xd3))) {
          unsigned char t1 = (s1 < 0xe0 ? 2*(s1-0xd9) : 2*s1-0x197);
          unsigned char t2 = (s2 < 0x91 ? s2-0x31 : s2-0x43);
          unsigned char buf[2];
          buf[0] = t1 + (t2 < 0x5e ? 0 : 1) + 0x21;
          buf[1] = (t2 < 0x5e ? t2 : t2-0x5e) + 0x21;
          return FUNC2(conv,pwc,buf,2);
        }
      }
    }
    return RET_ILSEQ;
  }
}