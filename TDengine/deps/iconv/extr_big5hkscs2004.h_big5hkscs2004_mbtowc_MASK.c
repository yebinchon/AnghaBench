#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char ucs4_t ;
typedef  TYPE_1__* conv_t ;
struct TYPE_8__ {unsigned char istate; } ;

/* Variables and functions */
 int RET_ILSEQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,unsigned char*,unsigned char const*,int) ; 
 int FUNC2 (TYPE_1__*,unsigned char*,unsigned char const*,int) ; 
 int FUNC3 (TYPE_1__*,unsigned char*,unsigned char const*,int) ; 
 int FUNC4 (TYPE_1__*,unsigned char*,unsigned char const*,int) ; 
 int FUNC5 (TYPE_1__*,unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC6 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  ucs4_t last_wc = conv->istate;
  if (last_wc) {
    /* Output the buffered character. */
    conv->istate = 0;
    *pwc = last_wc;
    return 0; /* Don't advance the input pointer. */
  } else {
    unsigned char c = *s;
    /* Code set 0 (ASCII) */
    if (c < 0x80)
      return FUNC1(conv,pwc,s,n);
    /* Code set 1 (BIG5 extended) */
    if (c >= 0xa1 && c < 0xff) {
      if (n < 2)
        return FUNC0(0);
      {
        unsigned char c2 = s[1];
        if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0xa1 && c2 < 0xff)) {
          if (!((c == 0xc6 && c2 >= 0xa1) || c == 0xc7)) {
            int ret = FUNC2(conv,pwc,s,2);
            if (ret != RET_ILSEQ)
              return ret;
          }
        }
      }
    }
    {
      int ret = FUNC3(conv,pwc,s,n);
      if (ret != RET_ILSEQ)
        return ret;
    }
    {
      int ret = FUNC4(conv,pwc,s,n);
      if (ret != RET_ILSEQ)
        return ret;
    }
    {
      int ret = FUNC5(conv,pwc,s,n);
      if (ret != RET_ILSEQ)
        return ret;
    }
    if (c == 0x88) {
      if (n < 2)
        return FUNC0(0);
      {
        unsigned char c2 = s[1];
        if (c2 == 0x62 || c2 == 0x64 || c2 == 0xa3 || c2 == 0xa5) {
          /* It's a composed character. */
          ucs4_t wc1 = ((c2 >> 3) << 2) + 0x009a; /* = 0x00ca or 0x00ea */
          ucs4_t wc2 = ((c2 & 6) << 2) + 0x02fc; /* = 0x0304 or 0x030c */
          /* We cannot output two Unicode characters at once. So,
             output the first character and buffer the second one. */
          *pwc = wc1;
          conv->istate = wc2;
          return 2;
        }
      }
    }
    return RET_ILSEQ;
  }
}