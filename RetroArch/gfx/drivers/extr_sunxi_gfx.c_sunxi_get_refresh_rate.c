
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_video {TYPE_1__* sunxi_disp; } ;
struct TYPE_2__ {float refresh_rate; } ;



__attribute__((used)) static float sunxi_get_refresh_rate (void *data)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;

   return _dispvars->sunxi_disp->refresh_rate;
}
