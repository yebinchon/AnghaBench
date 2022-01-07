
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ INVALID ;
 int IN_BASE64_RANGE (char) ;
 char LOWEST_BASE64_CHAR ;
 scalar_t__* base64_decode_lookup ;

uint32_t rtp_base64_byte_length(const char *str, uint32_t str_len)
{
   uint32_t character_count = 0;
   uint32_t ii;
   char cc;





   for (ii = 0; ii < str_len; ii++)
   {
      cc = *str++;
      if (cc == '=')
         break;

      if (!IN_BASE64_RANGE(cc))
         continue;

      if (base64_decode_lookup[cc - LOWEST_BASE64_CHAR] != INVALID)
         character_count++;
   }

   return (character_count * 3) >> 2;
}
