
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int find_long_index (char**) ;
 int find_short_index (char**) ;
 size_t optind ;
 int parse_long (struct option const*,char**) ;
 int parse_short (char const*,char**) ;
 int retro_assert (int) ;
 int shuffle_block (char**,char**,char**) ;

int getopt_long(int argc, char *argv[],
      const char *optstring, const struct option *longopts, int *longindex)
{
   int short_index, long_index;

   (void)longindex;

   if (optind == 0)
      optind = 1;

   if (argc < 2)
      return -1;

   short_index = find_short_index(&argv[optind]);
   long_index = find_long_index(&argv[optind]);


   if (short_index == -1 && long_index == -1)
      return -1;



   if ((short_index > 0) && ((short_index < long_index) || (long_index == -1)))
   {
      shuffle_block(&argv[optind], &argv[optind + short_index], &argv[argc]);
      short_index = 0;
   }
   else if ((long_index > 0) && ((long_index < short_index)
            || (short_index == -1)))
   {
      shuffle_block(&argv[optind], &argv[optind + long_index], &argv[argc]);
      long_index = 0;
   }

   retro_assert(short_index == 0 || long_index == 0);

   if (short_index == 0)
      return parse_short(optstring, &argv[optind]);
   if (long_index == 0)
      return parse_long(longopts, &argv[optind]);

   return '?';
}
