
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ucs4_t ;
typedef int conv_t ;


 int RET_TOOFEW (int ) ;
 int abort () ;

__attribute__((used)) static int
ucs4swapped_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{

  if (sizeof(unsigned int) != 4) abort();

  if (n >= 4) {
    unsigned int x = *(const unsigned int *)s;
    x = (x >> 24) | ((x >> 8) & 0xff00) | ((x & 0xff00) << 8) | (x << 24);
    *pwc = x;
    return 4;
  }
  return RET_TOOFEW(0);
}
