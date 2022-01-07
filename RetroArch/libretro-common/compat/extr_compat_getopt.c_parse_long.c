
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int* flag; int val; scalar_t__ has_arg; scalar_t__ name; } ;


 char* optarg ;
 scalar_t__ optind ;
 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static int parse_long(const struct option *longopts, char * const *argv)
{
   size_t indice;
   const struct option *opt = ((void*)0);
   for (indice = 0; longopts[indice].name; indice++)
   {
      if (!strcmp(longopts[indice].name, &argv[0][2]))
      {
         opt = &longopts[indice];
         break;
      }
   }

   if (!opt)
      return '?';


   if (opt->has_arg && !argv[1])
      return '?';

   if (opt->has_arg)
   {
      optarg = argv[1];
      optind += 2;
   }
   else
      optind++;

   if (opt->flag)
   {
      *opt->flag = opt->val;
      return 0;
   }

   return opt->val;
}
