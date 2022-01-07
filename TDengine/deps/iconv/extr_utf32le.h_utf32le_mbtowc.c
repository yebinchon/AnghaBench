
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;

__attribute__((used)) static int
utf32le_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  if (n >= 4) {
    ucs4_t wc = s[0] + (s[1] << 8) + (s[2] << 16) + (s[3] << 24);
    if (wc < 0x110000 && !(wc >= 0xd800 && wc < 0xe000)) {
      *pwc = wc;
      return 4;
    } else
      return RET_ILSEQ;
  }
  return RET_TOOFEW(0);
}
