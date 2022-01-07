
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_swapchain_images; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef int uint64_t ;
struct dispmanx_video {unsigned int core_width; unsigned int core_height; float aspect_ratio; unsigned int core_pitch; int * main_surface; int * menu_surface; scalar_t__ menu_active; scalar_t__ rgb32; } ;


 int VC_IMAGE_RGB565 ;
 int VC_IMAGE_XRGB8888 ;
 int dispmanx_surface_free (struct dispmanx_video*,int **) ;
 int dispmanx_surface_setup (struct dispmanx_video*,unsigned int,unsigned int,unsigned int,int,int ,int,float,int ,int ,int **) ;
 int dispmanx_surface_update (struct dispmanx_video*,void const*,int *) ;
 int menu_driver_frame (TYPE_1__*) ;
 float video_driver_get_aspect_ratio () ;

__attribute__((used)) static bool dispmanx_gfx_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count, unsigned pitch, const char *msg,
      video_frame_info_t *video_info)
{
   struct dispmanx_video *_dispvars = data;
   float aspect = video_driver_get_aspect_ratio();

   if (!frame)
      return 1;

   if ( (width != _dispvars->core_width) ||
         (height != _dispvars->core_height) ||
         (_dispvars->aspect_ratio != aspect))
   {

      if (width == 0 || height == 0)
         return 1;

      _dispvars->core_width = width;
      _dispvars->core_height = height;
      _dispvars->core_pitch = pitch;
      _dispvars->aspect_ratio = aspect;

      if (_dispvars->main_surface != ((void*)0))
         dispmanx_surface_free(_dispvars, &_dispvars->main_surface);



      dispmanx_surface_setup(_dispvars,
            width,
            height,
            pitch,
            _dispvars->rgb32 ? 32 : 16,
            _dispvars->rgb32 ? VC_IMAGE_XRGB8888 : VC_IMAGE_RGB565,
            255,
            _dispvars->aspect_ratio,
            video_info->max_swapchain_images,
            0,
            &_dispvars->main_surface);



      if (_dispvars->menu_active && _dispvars->menu_surface)
         dispmanx_surface_free(_dispvars, &_dispvars->menu_surface);
   }






   dispmanx_surface_update(_dispvars, frame, _dispvars->main_surface);
   return 1;
}
