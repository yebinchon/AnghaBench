
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf32_t ;
typedef int utf16_t ;


 int EOS ;
 int assert (int) ;

utf32_t lb_get_next_char_utf16(
  const utf16_t *s,
  size_t len,
  size_t *ip)
{
 utf16_t ch;

 assert(*ip <= len);
 if (*ip == len)
  return EOS;
 ch = s[(*ip)++];

 if (ch < 0xD800 || ch > 0xDBFF)
 {
  return ch;
 }
 if (*ip == len)
 {
  --(*ip);
  return EOS;
 }
 if (s[*ip] < 0xDC00 || s[*ip] > 0xDFFF)
 {
  return ch;
 }

 return (((utf32_t)ch & 0x3FF) << 10) + (s[(*ip)++] & 0x3FF) + 0x10000;
}
