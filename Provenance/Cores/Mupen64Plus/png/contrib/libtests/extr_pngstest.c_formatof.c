
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long png_uint_32 ;


 unsigned long FORMAT_COUNT ;
 int * format_names ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;
 unsigned long strtoul (char const*,char**,int ) ;

__attribute__((used)) static png_uint_32
formatof(const char *arg)
{
   char *ep;
   unsigned long format = strtoul(arg, &ep, 0);

   if (ep > arg && *ep == 0 && format < FORMAT_COUNT)
      return (png_uint_32)format;

   else for (format=0; format < FORMAT_COUNT; ++format)
   {
      if (strcmp(format_names[format], arg) == 0)
         return (png_uint_32)format;
   }

   fprintf(stderr, "pngstest: format name '%s' invalid\n", arg);
   return FORMAT_COUNT;
}
