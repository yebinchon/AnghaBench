
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (char*,int const*,int) ;

size_t utf8cpy(char *d, size_t d_len, const char *s, size_t chars)
{
   const uint8_t *sb = (const uint8_t*)s;
   const uint8_t *sb_org = sb;

   if (!s)
      return 0;

   while (*sb && chars-- > 0)
   {
      sb++;
      while ((*sb & 0xC0) == 0x80) sb++;
   }

   if ((size_t)(sb - sb_org) > d_len-1 )
   {
      sb = sb_org + d_len-1;
      while ((*sb & 0xC0) == 0x80) sb--;
   }

   memcpy(d, sb_org, sb-sb_org);
   d[sb-sb_org] = '\0';

   return sb-sb_org;
}
