
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 unsigned short* cp1254_2uni_1 ;
 scalar_t__* cp1254_2uni_2 ;
 scalar_t__* cp1254_2uni_3 ;

__attribute__((used)) static int
cp1254_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0x80) {
    *pwc = (ucs4_t) c;
    return 1;
  }
  else if (c < 0xa0) {
    unsigned short wc = cp1254_2uni_1[c-0x80];
    if (wc != 0xfffd) {
      *pwc = (ucs4_t) wc;
      return 1;
    }
  }
  else if (c < 0xd0) {
    *pwc = (ucs4_t) c;
    return 1;
  }
  else if (c < 0xe0) {
    *pwc = (ucs4_t) cp1254_2uni_2[c-0xd0];
    return 1;
  }
  else if (c < 0xf0) {
    *pwc = (ucs4_t) c;
    return 1;
  }
  else {
    *pwc = (ucs4_t) cp1254_2uni_3[c-0xf0];
    return 1;
  }
  return RET_ILSEQ;
}
