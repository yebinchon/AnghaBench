
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ string_is_empty (char*) ;

void string_remove_all_chars(char *str, char c)
{
   char *read_ptr = ((void*)0);
   char *write_ptr = ((void*)0);

   if (string_is_empty(str))
      return;

   read_ptr = str;
   write_ptr = str;

   while (*read_ptr != '\0')
   {
      *write_ptr = *read_ptr++;
      write_ptr += (*write_ptr != c) ? 1 : 0;
   }

   *write_ptr = '\0';
}
