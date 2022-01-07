
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_video {int vsync_condition; int vsync_cond_mutex; int pending_mutex; scalar_t__ menu_surface; scalar_t__ main_surface; } ;


 int drm_surface_free (struct drm_video*,scalar_t__*) ;
 int free (struct drm_video*) ;
 int * g_drm_mode ;
 int scond_free (int ) ;
 int slock_free (int ) ;

__attribute__((used)) static void drm_gfx_free(void *data)
{
   struct drm_video *_drmvars = data;

   if (!_drmvars)
      return;

   drm_surface_free(_drmvars, &_drmvars->main_surface);

   if (_drmvars->menu_surface)
      drm_surface_free(_drmvars, &_drmvars->menu_surface);


   slock_free(_drmvars->pending_mutex);
   slock_free(_drmvars->vsync_cond_mutex);
   scond_free(_drmvars->vsync_condition);

   g_drm_mode = ((void*)0);

   free(_drmvars);
}
