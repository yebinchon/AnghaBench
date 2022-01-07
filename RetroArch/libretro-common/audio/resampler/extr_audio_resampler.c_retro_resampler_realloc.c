
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* free ) (void*) ;} ;
typedef TYPE_1__ retro_resampler_t ;
typedef enum resampler_quality { ____Placeholder_resampler_quality } resampler_quality ;


 TYPE_1__* find_resampler_driver (char const*) ;
 int resampler_append_plugs (void**,TYPE_1__ const**,int,double) ;
 int stub1 (void*) ;

bool retro_resampler_realloc(void **re, const retro_resampler_t **backend,
      const char *ident, enum resampler_quality quality, double bw_ratio)
{
   if (*re && *backend)
      (*backend)->free(*re);

   *re = ((void*)0);
   *backend = find_resampler_driver(ident);

   if (!resampler_append_plugs(re, backend, quality, bw_ratio))
   {
      if (!*re)
         *backend = ((void*)0);
      return 0;
   }

   return 1;
}
