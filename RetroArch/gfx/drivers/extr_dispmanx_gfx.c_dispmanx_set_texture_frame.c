
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispmanx_video {unsigned int menu_width; unsigned int menu_height; unsigned int menu_pitch; int * menu_surface; int aspect_ratio; int menu_active; } ;


 int VC_IMAGE_RGBA16 ;
 int dispmanx_surface_setup (struct dispmanx_video*,unsigned int,unsigned int,unsigned int,int,int ,int,int ,int,int ,int **) ;
 int dispmanx_surface_update_async (void const*,int *) ;

__attribute__((used)) static void dispmanx_set_texture_frame(void *data, const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   struct dispmanx_video *_dispvars = data;

   if (!_dispvars->menu_active)
      return;


   if (_dispvars->menu_surface == ((void*)0))
   {
      _dispvars->menu_width = width;
      _dispvars->menu_height = height;
      _dispvars->menu_pitch = width * (rgb32 ? 4 : 2);


      dispmanx_surface_setup(_dispvars,
            width,
            height,
            _dispvars->menu_pitch,
            16,
            VC_IMAGE_RGBA16,
            210,
            _dispvars->aspect_ratio,
            1,
            0,
            &_dispvars->menu_surface);
   }




   dispmanx_surface_update_async(frame, _dispvars->menu_surface);
}
