
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_short_option (char* const) ;

__attribute__((used)) static int find_short_index(char * const *argv)
{
   int idx;
   for (idx = 0; argv[idx]; idx++)
   {
      if (is_short_option(argv[idx]))
         return idx;
   }

   return -1;
}
