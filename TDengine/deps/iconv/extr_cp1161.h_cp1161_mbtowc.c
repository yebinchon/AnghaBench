
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 scalar_t__* cp1161_2uni ;

__attribute__((used)) static int
cp1161_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0x80) {
    *pwc = (ucs4_t) c;
    return 1;
  }
  else if (c < 0xa0) {
  }
  else {
    *pwc = (ucs4_t) cp1161_2uni[c-0xa0];
    return 1;
  }
  return RET_ILSEQ;
}
