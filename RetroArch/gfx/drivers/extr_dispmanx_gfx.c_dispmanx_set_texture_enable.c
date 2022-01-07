
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispmanx_video {int menu_active; int menu_surface; } ;


 int dispmanx_surface_free (struct dispmanx_video*,int *) ;

__attribute__((used)) static void dispmanx_set_texture_enable(void *data, bool state, bool full_screen)
{
   struct dispmanx_video *_dispvars = data;


   if (!state && _dispvars->menu_active)
      dispmanx_surface_free(_dispvars, &_dispvars->menu_surface);

   _dispvars->menu_active = state;
}
