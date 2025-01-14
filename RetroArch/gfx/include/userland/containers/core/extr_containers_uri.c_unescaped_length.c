
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static uint32_t unescaped_length( const char *str, uint32_t str_len )
{
   uint32_t ii;
   uint32_t unesclen = 0;

   for (ii = 0; ii < str_len; ii++)
   {
      if (*str++ == '%' && (ii + 2) < str_len)
      {
         str += 2;
         ii += 2;
      }
      unesclen++;
   }

   return unesclen;
}
