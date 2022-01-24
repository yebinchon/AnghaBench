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
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC11 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  /* Code set 0 (ASCII) */
  if (c < 0x80)
    return FUNC2(conv,pwc,s,n);
  /* Code set 1 (CNS 11643-1992 Plane 1) */
  if (c >= 0xa1 && c < 0xff) {
    if (n < 2)
      return FUNC0(0);
    {
      unsigned char c2 = s[1];
      if (c2 >= 0xa1 && c2 < 0xff) {
        unsigned char buf[2];
        buf[0] = c-0x80; buf[1] = c2-0x80;
        return FUNC4(conv,pwc,buf,2);
      } else
        return RET_ILSEQ;
    }
  }
  /* Code set 2 (CNS 11643-1992 Planes 1-16) */
  if (c == 0x8e) {
    if (n < 4)
      return FUNC0(0);
    {
      unsigned char c2 = s[1];
      if (c2 >= 0xa1 && c2 <= 0xb0) {
        unsigned char c3 = s[2];
        unsigned char c4 = s[3];
        if (c3 >= 0xa1 && c3 < 0xff && c4 >= 0xa1 && c4 < 0xff) {
          unsigned char buf[2];
          int ret;
          buf[0] = c3-0x80; buf[1] = c4-0x80;
          switch (c2-0xa0) {
            case 1: ret = FUNC4(conv,pwc,buf,2); break;
            case 2: ret = FUNC5(conv,pwc,buf,2); break;
            case 3: ret = FUNC6(conv,pwc,buf,2); break;
            case 4: ret = FUNC7(conv,pwc,buf,2); break;
            case 5: ret = FUNC8(conv,pwc,buf,2); break;
            case 6: ret = FUNC9(conv,pwc,buf,2); break;
            case 7: ret = FUNC10(conv,pwc,buf,2); break;
            case 15: ret = FUNC3(conv,pwc,buf,2); break;
            default: return RET_ILSEQ;
          }
          if (ret == RET_ILSEQ)
            return RET_ILSEQ;
          if (ret != 2) FUNC1();
          return 4;
        }
      }
    }
  }
  return RET_ILSEQ;
}