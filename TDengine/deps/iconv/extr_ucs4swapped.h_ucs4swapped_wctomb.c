
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ucs4_t ;
typedef int conv_t ;


 int RET_TOOSMALL ;
 int abort () ;

__attribute__((used)) static int
ucs4swapped_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{

  if (sizeof(unsigned int) != 4) abort();

  if (n >= 4) {
    unsigned int x = wc;
    x = (x >> 24) | ((x >> 8) & 0xff00) | ((x & 0xff00) << 8) | (x << 24);
    *(unsigned int *)r = x;
    return 4;
  } else
    return RET_TOOSMALL;
}
