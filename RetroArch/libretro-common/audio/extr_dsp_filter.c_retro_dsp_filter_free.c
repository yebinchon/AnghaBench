
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_instances; unsigned int num_plugs; scalar_t__ conf; struct TYPE_6__* plugs; scalar_t__ lib; struct TYPE_6__* instances; scalar_t__ impl_data; TYPE_1__* impl; } ;
typedef TYPE_2__ retro_dsp_filter_t ;
struct TYPE_5__ {int (* free ) (scalar_t__) ;} ;


 int config_file_free (scalar_t__) ;
 int dylib_close (scalar_t__) ;
 int free (TYPE_2__*) ;
 int stub1 (scalar_t__) ;

void retro_dsp_filter_free(retro_dsp_filter_t *dsp)
{
   unsigned i;
   if (!dsp)
      return;

   for (i = 0; i < dsp->num_instances; i++)
   {
      if (dsp->instances[i].impl_data && dsp->instances[i].impl)
         dsp->instances[i].impl->free(dsp->instances[i].impl_data);
   }
   free(dsp->instances);
   if (dsp->conf)
      config_file_free(dsp->conf);

   free(dsp);
}
