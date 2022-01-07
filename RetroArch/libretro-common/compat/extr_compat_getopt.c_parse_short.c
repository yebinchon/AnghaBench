
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,scalar_t__) ;
 char* optarg ;
 scalar_t__ optind ;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int parse_short(const char *optstring, char * const *argv)
{
   bool extra_opt, takes_arg, embedded_arg;
   const char *opt = ((void*)0);
   char arg = argv[0][1];

   if (arg == ':')
      return '?';

   opt = strchr(optstring, arg);
   if (!opt)
      return '?';

   extra_opt = argv[0][2];
   takes_arg = opt[1] == ':';



   embedded_arg = extra_opt && takes_arg;

   if (takes_arg)
   {
      if (embedded_arg)
      {
         optarg = argv[0] + 2;
         optind++;
      }
      else
      {
         optarg = argv[1];
         optind += 2;
      }

      return optarg ? opt[0] : '?';
   }

   if (embedded_arg)
   {



      memmove(&argv[0][1], &argv[0][2], strlen(&argv[0][2]) + 1);
      return opt[0];
   }

   optind++;
   return opt[0];
}
