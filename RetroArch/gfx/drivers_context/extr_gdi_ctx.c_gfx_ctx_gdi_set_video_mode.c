
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;


 int RARCH_ERR (char*) ;
 int gfx_ctx_gdi_destroy (void*) ;
 int win32_set_video_mode (int *,unsigned int,unsigned int,int) ;

__attribute__((used)) static bool gfx_ctx_gdi_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   if (!win32_set_video_mode(((void*)0), width, height, fullscreen))
   {
      RARCH_ERR("[GDI]: win32_set_video_mode failed.\n");
      gfx_ctx_gdi_destroy(data);
      return 0;
   }

   return 1;
}
