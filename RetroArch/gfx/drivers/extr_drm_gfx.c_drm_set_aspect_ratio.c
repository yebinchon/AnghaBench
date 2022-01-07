
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_video {float current_aspect; int menu_surface; scalar_t__ menu_active; int main_surface; } ;
struct TYPE_2__ {float value; } ;


 TYPE_1__* aspectratio_lut ;
 int drm_plane_setup (int ) ;
 int drm_surface_set_aspect (int ,float) ;

__attribute__((used)) static void drm_set_aspect_ratio (void *data, unsigned aspect_ratio_idx)
{
   struct drm_video *_drmvars = data;

   float new_aspect = aspectratio_lut[aspect_ratio_idx].value;

   if (_drmvars->current_aspect != new_aspect)
   {
      _drmvars->current_aspect = new_aspect;
      drm_surface_set_aspect(_drmvars->main_surface, new_aspect);
      if (_drmvars->menu_active)
      {
         drm_surface_set_aspect(_drmvars->menu_surface, new_aspect);
         drm_plane_setup(_drmvars->menu_surface);
      }
   }
}
