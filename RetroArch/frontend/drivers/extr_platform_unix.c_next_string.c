
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool next_string(char **_ptr, char **_str)
{
   char *ptr = *_ptr;

   while (*ptr == ' ')
      ptr++;

   if (*ptr == '\0')
      return 0;

   while ((*ptr != ' ') && (*ptr != '\n') && (*ptr != '\0'))
      ptr++;

   if (*ptr != '\0')
      *(ptr++) = '\0';

   *_ptr = ptr;
   return 1;
}
