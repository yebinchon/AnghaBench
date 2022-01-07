
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int atoi (char*) ;
 char* getenv (char const*) ;

__attribute__((used)) static uint32_t read_uint32_option(const char *name, uint32_t cur)
{
   char *val = getenv(name);

   if (val == ((void*)0))
      return cur;

   if (val[0] != '\0')
      return atoi(val);

   return 0;
}
