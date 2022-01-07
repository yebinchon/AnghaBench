
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;

__attribute__((used)) static int
jisx0201_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0x80) {
    if (c == 0x5c)
      *pwc = (ucs4_t) 0x00a5;
    else if (c == 0x7e)
      *pwc = (ucs4_t) 0x203e;
    else
      *pwc = (ucs4_t) c;
    return 1;
  } else {
    if (c >= 0xa1 && c < 0xe0) {
      *pwc = (ucs4_t) c + 0xfec0;
      return 1;
    }
  }
  return RET_ILSEQ;
}
