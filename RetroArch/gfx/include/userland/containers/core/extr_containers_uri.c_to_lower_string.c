
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void to_lower_string( char *str )
{
   char c;

   while ((c = *str) != '\0')
   {
      if (c >= 'A' && c <= 'Z')
         *str = c - 'A' + 'a';
      str++;
   }
}
