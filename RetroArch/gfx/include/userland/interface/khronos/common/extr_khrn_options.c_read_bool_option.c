
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;

__attribute__((used)) static bool read_bool_option(const char *name, bool cur)
{
   char *val = getenv(name);

   if (val == ((void*)0))
      return cur;

   if (val[0] == 't' || val[0] == 'T' || val[0] == '1')
      return 1;

   return 0;
}
