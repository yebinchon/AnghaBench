
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_height; int max_width; } ;
typedef TYPE_1__ rarch_softfilter_t ;


 int rarch_softfilter_get_output_size (TYPE_1__*,unsigned int*,unsigned int*,int ,int ) ;

void rarch_softfilter_get_max_output_size(rarch_softfilter_t *filt,
      unsigned *width, unsigned *height)
{
   rarch_softfilter_get_output_size(filt, width, height,
         filt->max_width, filt->max_height);
}
