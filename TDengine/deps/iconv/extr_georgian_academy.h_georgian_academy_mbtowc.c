
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 scalar_t__* georgian_academy_2uni ;

__attribute__((used)) static int
georgian_academy_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c >= 0x80 && c < 0xa0)
    *pwc = (ucs4_t) georgian_academy_2uni[c-0x80];
  else if (c >= 0xc0 && c < 0xe7)
    *pwc = (ucs4_t) c + 0x1010;
  else
    *pwc = (ucs4_t) c;
  return 1;
}
