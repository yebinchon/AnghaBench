
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 scalar_t__* tds565_2uni ;

__attribute__((used)) static int
tds565_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0x40) {
    *pwc = (ucs4_t) c;
    return 1;
  }
  else if (c < 0x80) {
    *pwc = (ucs4_t) tds565_2uni[c-0x40];
    return 1;
  }
  return RET_ILSEQ;
}
