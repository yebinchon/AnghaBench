
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ string_is_equal_fast (char*,char*,int ) ;
 int string_to_upper (char*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;

__attribute__((used)) static bool left_exclusion(char *left,
      const char **strings, const size_t strings_count)
{
   unsigned i;
   char exclusion_string[32];
   char comparison_string[32];

   strlcpy(exclusion_string, left, 32);
   string_to_upper(exclusion_string);

   for (i = 0; i < (unsigned)strings_count; i++)
   {
      strlcpy(comparison_string, strings[i], 32);
      string_to_upper(comparison_string);

      if (string_is_equal_fast(exclusion_string,
               comparison_string, strlen(comparison_string)))
         return 1;
   }

   return 0;
}
