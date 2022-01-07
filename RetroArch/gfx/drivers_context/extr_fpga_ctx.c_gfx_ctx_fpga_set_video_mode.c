
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;


 int gfx_ctx_fpga_destroy (void*) ;

__attribute__((used)) static bool gfx_ctx_fpga_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   if (0)
      goto error;

   return 1;

error:
   gfx_ctx_fpga_destroy(data);
   return 0;
}
