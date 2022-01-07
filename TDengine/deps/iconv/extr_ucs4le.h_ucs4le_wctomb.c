
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_TOOSMALL ;

__attribute__((used)) static int
ucs4le_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (n >= 4) {
    r[0] = (unsigned char) wc;
    r[1] = (unsigned char) (wc >> 8);
    r[2] = (unsigned char) (wc >> 16);
    r[3] = (unsigned char) (wc >> 24);
    return 4;
  } else
    return RET_TOOSMALL;
}
