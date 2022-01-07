
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int RESERVED_CHARS_TABLE_T ;


 scalar_t__ URI_RESERVED (char,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static uint32_t escaped_length( const char *str, RESERVED_CHARS_TABLE_T reserved )
{
   uint32_t ii;
   uint32_t esclen = 0;
   char c;

   for (ii = strlen(str); ii > 0; ii--)
   {
      c = *str++;
      if (URI_RESERVED(c, reserved))
      {

         esclen += 3;
      } else {
         esclen++;
      }
   }

   return esclen;
}
