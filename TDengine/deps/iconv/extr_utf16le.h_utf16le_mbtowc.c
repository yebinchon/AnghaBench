
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_SHIFT_ILSEQ (int) ;
 int RET_TOOFEW (int) ;

__attribute__((used)) static int
utf16le_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  int count = 0;
  if (n >= 2) {
    ucs4_t wc = s[0] + (s[1] << 8);
    if (wc >= 0xd800 && wc < 0xdc00) {
      if (n >= 4) {
        ucs4_t wc2 = s[2] + (s[3] << 8);
        if (!(wc2 >= 0xdc00 && wc2 < 0xe000))
          goto ilseq;
        *pwc = 0x10000 + ((wc - 0xd800) << 10) + (wc2 - 0xdc00);
        return count+4;
      }
    } else if (wc >= 0xdc00 && wc < 0xe000) {
      goto ilseq;
    } else {
      *pwc = wc;
      return count+2;
    }
  }
  return RET_TOOFEW(count);

ilseq:
  return RET_SHIFT_ILSEQ(count);
}
