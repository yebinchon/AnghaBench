
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int search_gcda(const char *str, int len)
{
 int i;
 for (i = 0; i < len - 6; i++)
  if (str[i] == '.' && str[i+1] == 'g' && str[i+2] == 'c' &&
      str[i+3] == 'd' && str[i+4] == 'a' && str[i+5] == 0)
   return i;
 return -1;
}
