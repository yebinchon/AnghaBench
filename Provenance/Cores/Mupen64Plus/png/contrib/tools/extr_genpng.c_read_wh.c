
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;


 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int stderr ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static png_uint_32
read_wh(const char *name, const char *str)

{
   char *ep = ((void*)0);
   unsigned long ul = strtoul(str, &ep, 10);

   if (ep != ((void*)0) && *ep == 0 && ul > 0 && ul <= 0x7fffffff)
      return (png_uint_32) ul;

   fprintf(stderr, "genpng: %s: invalid number %s\n", name, str);
   exit(1);
}
