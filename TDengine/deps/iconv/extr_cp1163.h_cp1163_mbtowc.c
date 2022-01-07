
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 scalar_t__* cp1129_2uni ;

__attribute__((used)) static int
cp1163_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0xa0)
    *pwc = (ucs4_t) c;
  else if (c == 0xa4)
    *pwc = 0x20ac;
  else
    *pwc = (ucs4_t) cp1129_2uni[c-0xa0];
  return 1;
}
