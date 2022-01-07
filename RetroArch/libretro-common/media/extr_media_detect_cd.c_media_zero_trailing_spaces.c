
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void media_zero_trailing_spaces(char *buf, size_t len)
{
   int i;

   for (i = len - 1; i >= 0; i--)
   {
      if (buf[i] == ' ')
         buf[i] = '\0';
      else if (buf[i] != '\0')
         break;
   }
}
