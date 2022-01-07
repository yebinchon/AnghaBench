
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8_t ;
typedef int utf32_t ;


 int EOS ;
 int assert (int) ;

utf32_t lb_get_next_char_utf8(
  const utf8_t *s,
  size_t len,
  size_t *ip)
{
 utf8_t ch;
 utf32_t res;

 assert(*ip <= len);
 if (*ip == len)
  return EOS;
 ch = s[*ip];

 if (ch < 0xC2 || ch > 0xF4)
 {
  *ip += 1;
  return ch;
 }
 else if (ch < 0xE0)
 {
  if (*ip + 2 > len)
   return EOS;
  res = ((ch & 0x1F) << 6) + (s[*ip + 1] & 0x3F);
  *ip += 2;
  return res;
 }
 else if (ch < 0xF0)
 {
  if (*ip + 3 > len)
   return EOS;
  res = ((ch & 0x0F) << 12) +
     ((s[*ip + 1] & 0x3F) << 6) +
     ((s[*ip + 2] & 0x3F));
  *ip += 3;
  return res;
 }
 else
 {
  if (*ip + 4 > len)
   return EOS;
  res = ((ch & 0x07) << 18) +
     ((s[*ip + 1] & 0x3F) << 12) +
     ((s[*ip + 2] & 0x3F) << 6) +
     ((s[*ip + 3] & 0x3F));
  *ip += 4;
  return res;
 }
}
