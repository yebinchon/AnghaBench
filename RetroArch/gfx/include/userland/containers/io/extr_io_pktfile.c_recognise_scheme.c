
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t countof (int *) ;
 int * recognised_schemes ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool recognise_scheme(const char *scheme)
{
   size_t ii;

   if (!scheme)
      return 0;

   for (ii = 0; ii < countof(recognised_schemes); ii++)
   {
      if (strcmp(recognised_schemes[ii], scheme) == 0)
         return 1;
   }

   return 0;
}
