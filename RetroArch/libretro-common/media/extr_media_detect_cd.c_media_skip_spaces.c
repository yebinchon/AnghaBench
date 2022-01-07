
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool media_skip_spaces(const char **buf, size_t len)
{
   bool found = 0;
   unsigned i;

   if (!buf || !*buf || !**buf)
      return 0;

   for (i = 0; i < len; i++)
   {
      if ((*buf)[i] == ' ' || (*buf)[i] == '\t')
         continue;

      *buf += i;
      found = 1;
      break;
   }

   if (found)
      return 1;

   return 0;
}
