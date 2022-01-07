
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 scalar_t__* pt154_2uni ;

__attribute__((used)) static int
pt154_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0x80)
    *pwc = (ucs4_t) c;
  else if (c >= 0xc0)
    *pwc = (ucs4_t) c + 0x0350;
  else
    *pwc = (ucs4_t) pt154_2uni[c-0x80];
  return 1;
}
