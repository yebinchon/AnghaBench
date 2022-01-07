
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;

__attribute__((used)) static int
iso8859_11_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0xa1) {
    *pwc = (ucs4_t) c;
    return 1;
  }
  else if (c <= 0xfb && !(c >= 0xdb && c <= 0xde)) {
    *pwc = (ucs4_t) (c + 0x0d60);
    return 1;
  }
  return RET_ILSEQ;
}
