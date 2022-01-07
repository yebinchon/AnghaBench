
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nat_h; scalar_t__ nat_w; } ;
typedef TYPE_1__ omapfb_data_t ;



__attribute__((used)) static float omapfb_scaling(omapfb_data_t *pdata, int width, int height)
{
   const float w_factor = (float)pdata->nat_w / (float)width;
   const float h_factor = (float)pdata->nat_h / (float)height;

   return (w_factor < h_factor ? w_factor : h_factor);
}
