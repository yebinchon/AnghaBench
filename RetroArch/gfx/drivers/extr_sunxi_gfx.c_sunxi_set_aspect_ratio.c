
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_video {float aspect_ratio; int src_pitch; int src_height; int src_width; } ;
struct TYPE_2__ {float value; } ;


 TYPE_1__* aspectratio_lut ;
 int sunxi_setup_scale (struct sunxi_video*,int ,int ,int ) ;

__attribute__((used)) static void sunxi_set_aspect_ratio(void *data, unsigned aspect_ratio_idx)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;
   float new_aspect = aspectratio_lut[aspect_ratio_idx].value;

   if (new_aspect != _dispvars->aspect_ratio)
   {

      _dispvars->aspect_ratio = new_aspect;
      sunxi_setup_scale(_dispvars, _dispvars->src_width, _dispvars->src_height, _dispvars->src_pitch);
   }
}
