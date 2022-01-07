
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ident; } ;


 TYPE_1__** resampler_drivers ;
 scalar_t__ string_is_equal_noncase (char const*,int ) ;

__attribute__((used)) static int find_resampler_driver_index(const char *ident)
{
   unsigned i;

   for (i = 0; resampler_drivers[i]; i++)
      if (string_is_equal_noncase(ident, resampler_drivers[i]->ident))
         return i;
   return -1;
}
