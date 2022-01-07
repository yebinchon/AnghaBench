
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct softfilter_implementation {int short_ident; } ;
struct TYPE_5__ {unsigned int num_plugs; TYPE_1__* plugs; } ;
typedef TYPE_2__ rarch_softfilter_t ;
struct TYPE_4__ {struct softfilter_implementation const* impl; } ;


 scalar_t__ string_is_equal (int ,char const*) ;

__attribute__((used)) static const struct softfilter_implementation *
softfilter_find_implementation(rarch_softfilter_t *filt, const char *ident)
{
   unsigned i;

   for (i = 0; i < filt->num_plugs; i++)
   {
      if (string_is_equal(filt->plugs[i].impl->short_ident, ident))
         return filt->plugs[i].impl;
   }

   return ((void*)0);
}
