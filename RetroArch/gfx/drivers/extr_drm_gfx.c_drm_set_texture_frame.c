
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct drm_video {int menu_surface; int current_aspect; int menu_active; } ;


 int DRM_FORMAT_XRGB8888 ;
 int drm_plane_setup (int ) ;
 int drm_surface_setup (struct drm_video*,unsigned int,unsigned int,unsigned int,int,int ,int,int ,int,int ,int *) ;
 int drm_surface_update (struct drm_video*,char*,int ) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (char*,char*,unsigned int) ;

__attribute__((used)) static void drm_set_texture_frame(void *data, const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   unsigned int i, j;
   struct drm_video *_drmvars = data;

   if (!_drmvars->menu_active)
      return;



   if (!_drmvars->menu_surface)
   {
      drm_surface_setup(_drmvars,
            width,
            height,
            width * 4,
            4,
            DRM_FORMAT_XRGB8888,
            210,
            _drmvars->current_aspect,
            2,
            0,
            &_drmvars->menu_surface);



      drm_plane_setup(_drmvars->menu_surface);
   }




   unsigned int src_pitch = width * 2;
   unsigned int dst_pitch = width * 4;
   unsigned int dst_width = width;
   uint32_t line[dst_width];


   char *frame_output = (char *) malloc (dst_pitch * height);


   char *dst_base_addr = frame_output;

   for (i = 0; i < height; i++)
   {
      for (j = 0; j < src_pitch / 2; j++)
      {
         uint16_t src_pix = *((uint16_t*)frame + (src_pitch / 2 * i) + j);

         uint32_t R = (src_pix << 8) & 0x00FF0000;
         uint32_t G = (src_pix << 4) & 0x0000FF00;
         uint32_t B = (src_pix << 0) & 0x000000FF;
         line[j] = (0 | R | G | B);
      }
      memcpy(dst_base_addr + (dst_pitch * i), (char*)line, dst_pitch);
   }


   drm_surface_update(_drmvars, frame_output, _drmvars->menu_surface);
}
