
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,...) ;

int get_int(const char *str)
{
   int res;

   res = 0;

   if (str[0] == '#')
      ++str;

   if (str[0] == '$')
   {
      unsigned hex;

      ++str;
      sscanf(str, "%x", &hex);
      res = (int)hex;
   }
   else
   {
      sscanf(str, "%i", &res);
   }

   return res;
}
