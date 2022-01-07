
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int string_trim_whitespace_left (char* const) ;
 int string_trim_whitespace_right (char* const) ;

char *string_trim_whitespace(char *const s)
{
   string_trim_whitespace_right(s);
   string_trim_whitespace_left(s);

   return s;
}
