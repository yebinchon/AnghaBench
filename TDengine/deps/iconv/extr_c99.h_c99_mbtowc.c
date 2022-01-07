
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;

__attribute__((used)) static int
c99_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c;
  ucs4_t wc;
  int i;

  c = s[0];
  if (c < 0xa0) {
    if (c != '\\') {
      *pwc = c;
      return 1;
    }
    if (n < 2)
      return RET_TOOFEW(0);
    c = s[1];
    if (c == 'u') {
      wc = 0;
      for (i = 2; i < 6; i++) {
        if (n <= i)
          return RET_TOOFEW(0);
        c = s[i];
        if (c >= '0' && c <= '9')
          c -= '0';
        else if (c >= 'A' && c <= 'Z')
          c -= 'A'-10;
        else if (c >= 'a' && c <= 'z')
          c -= 'a'-10;
        else
          goto simply_backslash;
        wc |= (ucs4_t) c << (4 * (5-i));
      }
      if ((wc >= 0x00a0 && !(wc >= 0xd800 && wc < 0xe000))
          || wc == 0x0024 || wc == 0x0040 || wc == 0x0060) {
        *pwc = wc;
        return 6;
      }
    } else if (c == 'U') {
      wc = 0;
      for (i = 2; i < 10; i++) {
        if (n <= i)
          return RET_TOOFEW(0);
        c = s[i];
        if (c >= '0' && c <= '9')
          c -= '0';
        else if (c >= 'A' && c <= 'Z')
          c -= 'A'-10;
        else if (c >= 'a' && c <= 'z')
          c -= 'a'-10;
        else
          goto simply_backslash;
        wc |= (ucs4_t) c << (4 * (9-i));
      }
      if ((wc >= 0x00a0 && !(wc >= 0xd800 && wc < 0xe000))
          || wc == 0x0024 || wc == 0x0040 || wc == 0x0060) {
        *pwc = wc;
        return 10;
      }
    } else
      goto simply_backslash;
  }
  return RET_ILSEQ;
simply_backslash:
  *pwc = '\\';
  return 1;
}
