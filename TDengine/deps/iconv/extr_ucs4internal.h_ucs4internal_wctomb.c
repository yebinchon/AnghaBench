
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ucs4_t ;
typedef int conv_t ;


 int RET_TOOSMALL ;

__attribute__((used)) static int
ucs4internal_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (n >= 4) {
    *(unsigned int *)r = wc;
    return 4;
  } else
    return RET_TOOSMALL;
}
