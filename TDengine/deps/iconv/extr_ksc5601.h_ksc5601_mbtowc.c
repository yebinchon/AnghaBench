
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 unsigned short* ksc5601_2uni_page21 ;
 unsigned short* ksc5601_2uni_page30 ;
 unsigned short* ksc5601_2uni_page4a ;

__attribute__((used)) static int
ksc5601_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c1 = s[0];
  if ((c1 >= 0x21 && c1 <= 0x2c) || (c1 >= 0x30 && c1 <= 0x48) || (c1 >= 0x4a && c1 <= 0x7d)) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if (c2 >= 0x21 && c2 < 0x7f) {
        unsigned int i = 94 * (c1 - 0x21) + (c2 - 0x21);
        unsigned short wc = 0xfffd;
        if (i < 1410) {
          if (i < 1115)
            wc = ksc5601_2uni_page21[i];
        } else if (i < 3854) {
          if (i < 3760)
            wc = ksc5601_2uni_page30[i-1410];
        } else {
          if (i < 8742)
            wc = ksc5601_2uni_page4a[i-3854];
        }
        if (wc != 0xfffd) {
          *pwc = (ucs4_t) wc;
          return 2;
        }
      }
      return RET_ILSEQ;
    }
    return RET_TOOFEW(0);
  }
  return RET_ILSEQ;
}
