
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispmanx_video {int vsync_condition; int pending_mutex; int display; scalar_t__ menu_surface; scalar_t__ back_surface; scalar_t__ main_surface; } ;


 int bcm_host_deinit () ;
 int dispmanx_surface_free (struct dispmanx_video*,scalar_t__*) ;
 int free (struct dispmanx_video*) ;
 int scond_free (int ) ;
 int slock_free (int ) ;
 int vc_dispmanx_display_close (int ) ;

__attribute__((used)) static void dispmanx_gfx_free(void *data)
{
   struct dispmanx_video *_dispvars = data;

   if (!_dispvars)
      return;

   dispmanx_surface_free(_dispvars, &_dispvars->main_surface);
   dispmanx_surface_free(_dispvars, &_dispvars->back_surface);

   if (_dispvars->menu_surface)
      dispmanx_surface_free(_dispvars, &_dispvars->menu_surface);


   vc_dispmanx_display_close(_dispvars->display);
   bcm_host_deinit();


   slock_free(_dispvars->pending_mutex);
   scond_free(_dispvars->vsync_condition);

   free(_dispvars);
}
