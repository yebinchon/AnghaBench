
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;

__attribute__((used)) static int
ucs2be_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  if (n >= 2) {
    if (s[0] >= 0xd8 && s[0] < 0xe0) {
      return RET_ILSEQ;
    } else {
      *pwc = (s[0] << 8) + s[1];
      return 2;
    }
  }
  return RET_TOOFEW(0);
}
