
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int impl_data; TYPE_1__* impl; } ;
typedef TYPE_2__ rarch_softfilter_t ;
struct TYPE_4__ {int (* query_output_size ) (int ,unsigned int*,unsigned int*,unsigned int,unsigned int) ;} ;


 int stub1 (int ,unsigned int*,unsigned int*,unsigned int,unsigned int) ;

void rarch_softfilter_get_output_size(rarch_softfilter_t *filt,
      unsigned *out_width, unsigned *out_height,
      unsigned width, unsigned height)
{
   if (filt && filt->impl && filt->impl->query_output_size)
      filt->impl->query_output_size(filt->impl_data, out_width,
            out_height, width, height);
}
