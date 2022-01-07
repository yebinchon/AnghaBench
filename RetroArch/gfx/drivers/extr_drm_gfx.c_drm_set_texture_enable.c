
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_video {int menu_active; int menu_surface; int main_surface; } ;


 int drm_plane_setup (int ) ;
 int drm_surface_free (struct drm_video*,int *) ;

__attribute__((used)) static void drm_set_texture_enable(void *data, bool state, bool full_screen)
{
   struct drm_video *_drmvars = data;


   if (!state && _drmvars->menu_active)
   {

      drm_plane_setup(_drmvars->main_surface);

      drm_surface_free(_drmvars, &_drmvars->menu_surface);
   }

   _drmvars->menu_active = state;
}
