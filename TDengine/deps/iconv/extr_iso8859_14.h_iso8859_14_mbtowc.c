
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 scalar_t__* iso8859_14_2uni ;

__attribute__((used)) static int
iso8859_14_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c >= 0xa0)
    *pwc = (ucs4_t) iso8859_14_2uni[c-0xa0];
  else
    *pwc = (ucs4_t) c;
  return 1;
}
