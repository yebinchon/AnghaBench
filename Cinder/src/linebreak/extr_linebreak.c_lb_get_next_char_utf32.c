
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const utf32_t ;


 int const EOS ;
 int assert (int) ;

utf32_t lb_get_next_char_utf32(
  const utf32_t *s,
  size_t len,
  size_t *ip)
{
 assert(*ip <= len);
 if (*ip == len)
  return EOS;
 return s[(*ip)++];
}
