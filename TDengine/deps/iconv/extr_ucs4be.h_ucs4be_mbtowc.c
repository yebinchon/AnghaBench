
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char ucs4_t ;
typedef int conv_t ;


 int RET_TOOFEW (int ) ;

__attribute__((used)) static int
ucs4be_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  if (n >= 4) {
    *pwc = (s[0] << 24) + (s[1] << 16) + (s[2] << 8) + s[3];
    return 4;
  }
  return RET_TOOFEW(0);
}
