
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int context_data; int (* cb_update_window_title ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ video_frame_info_t ;
typedef int uint64_t ;
struct drm_video {unsigned int core_width; unsigned int core_height; unsigned int core_pitch; int * main_surface; int current_aspect; scalar_t__ rgb32; } ;


 int DRM_FORMAT_RGB565 ;
 int DRM_FORMAT_XRGB8888 ;
 int drm_plane_setup (int *) ;
 int drm_surface_free (struct drm_video*,int **) ;
 int drm_surface_setup (struct drm_video*,unsigned int,unsigned int,unsigned int,int,int ,int,int ,int,int ,int **) ;
 int drm_surface_update (struct drm_video*,void const*,int *) ;
 int menu_driver_frame (TYPE_1__*) ;
 int stub1 (int ,TYPE_1__*) ;

__attribute__((used)) static bool drm_gfx_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count, unsigned pitch, const char *msg,
      video_frame_info_t *video_info)
{
   struct drm_video *_drmvars = data;

   if ( ( width != _drmvars->core_width) ||
         (height != _drmvars->core_height))
   {

      if (width == 0 || height == 0)
         return 1;

      _drmvars->core_width = width;
      _drmvars->core_height = height;
      _drmvars->core_pitch = pitch;

      if (_drmvars->main_surface != ((void*)0))
         drm_surface_free(_drmvars, &_drmvars->main_surface);


      drm_surface_setup(_drmvars,
            width,
            height,
            pitch,
            _drmvars->rgb32 ? 4 : 2,
            _drmvars->rgb32 ? DRM_FORMAT_XRGB8888 : DRM_FORMAT_RGB565,
     255,
            _drmvars->current_aspect,
            3,
            0,
            &_drmvars->main_surface);


      drm_plane_setup(_drmvars->main_surface);
   }





   video_info->cb_update_window_title(
         video_info->context_data, video_info);


   drm_surface_update(_drmvars, frame, _drmvars->main_surface);
   return 1;
}
