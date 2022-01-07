
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ INVALID ;
 int IN_BASE64_RANGE (char) ;
 char LOWEST_BASE64_CHAR ;
 scalar_t__* base64_decode_lookup ;

uint8_t *rtp_base64_decode(const char *str, uint32_t str_len, uint8_t *buffer, uint32_t buffer_len)
{
   uint32_t character_count = 0;
   uint32_t value = 0;
   uint32_t ii;
   char cc;
   uint8_t lookup;





   for (ii = 0; ii < str_len; ii++)
   {
      cc = *str++;
      if (cc == '=')
         break;

      if (!IN_BASE64_RANGE(cc))
         continue;

      lookup = base64_decode_lookup[cc - LOWEST_BASE64_CHAR];
      if (lookup == INVALID)
         continue;

      value = (value << 6) | lookup;
      character_count++;

      if (character_count == 4)
      {
         if (buffer_len < 3)
            return ((void*)0);

         *buffer++ = (uint8_t)(value >> 16);
         *buffer++ = (uint8_t)(value >> 8);
         *buffer++ = (uint8_t)(value );
         buffer_len -= 3;

         character_count = 0;
         value = 0;
      }
   }




   switch (character_count)
   {
   case 0:
      break;
   case 2:
      if (!buffer_len)
         return ((void*)0);
      *buffer++ = (uint8_t)(value >> 4);
      break;
   case 3:
      if (buffer_len < 2)
         return ((void*)0);
      *buffer++ = (uint8_t)(value >> 10);
      *buffer++ = (uint8_t)(value >> 2);
      break;
   default:
      return ((void*)0);
   }


   return buffer;
}
