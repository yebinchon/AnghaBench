
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dspfilter_implementation {int short_ident; } ;
struct TYPE_5__ {unsigned int num_plugs; TYPE_1__* plugs; } ;
typedef TYPE_2__ retro_dsp_filter_t ;
struct TYPE_4__ {struct dspfilter_implementation const* impl; } ;


 scalar_t__ string_is_equal (int ,char const*) ;

__attribute__((used)) static const struct dspfilter_implementation *find_implementation(
      retro_dsp_filter_t *dsp, const char *ident)
{
   unsigned i;
   for (i = 0; i < dsp->num_plugs; i++)
   {
      if (string_is_equal(dsp->plugs[i].impl->short_ident, ident))
         return dsp->plugs[i].impl;
   }

   return ((void*)0);
}
