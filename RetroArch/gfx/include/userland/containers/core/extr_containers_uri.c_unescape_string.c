
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int from_hex (char const*,int) ;

__attribute__((used)) static void unescape_string( const char *str, uint32_t str_len, char *unescaped )
{
   uint32_t ii;

   for (ii = 0; ii < str_len; ii++)
   {
      char c = *str++;

      if (c == '%' && (ii + 2) < str_len )
      {
         c = (char)(from_hex(str, 2) & 0xFF);
         str += 2;
         ii += 2;
      }
      *unescaped++ = c;
   }

   *unescaped = '\0';
}
