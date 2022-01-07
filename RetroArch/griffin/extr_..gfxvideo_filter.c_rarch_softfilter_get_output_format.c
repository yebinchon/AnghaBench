
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out_pix_fmt; } ;
typedef TYPE_1__ rarch_softfilter_t ;
typedef enum retro_pixel_format { ____Placeholder_retro_pixel_format } retro_pixel_format ;



enum retro_pixel_format rarch_softfilter_get_output_format(
      rarch_softfilter_t *filt)
{
   return filt->out_pix_fmt;
}
