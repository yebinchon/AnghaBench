
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void remove_all_chars(char* str, char c)
{
   char *pr = str, *pw = str;
   while (*pr) {
      *pw = *pr++;
      pw += (*pw != c);
   }
   *pw = '\0';
}
