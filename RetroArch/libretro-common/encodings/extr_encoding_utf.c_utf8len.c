
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t utf8len(const char *string)
{
   size_t ret = 0;

   if (!string)
      return 0;

   while (*string)
   {
      if ((*string & 0xC0) != 0x80)
         ret++;
      string++;
   }
   return ret;
}
