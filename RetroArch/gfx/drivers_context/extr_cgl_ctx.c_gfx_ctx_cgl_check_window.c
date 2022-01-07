
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gfx_ctx_cgl_get_video_size (void*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void gfx_ctx_cgl_check_window(void *data, bool *quit,
      bool *resize, unsigned *width, unsigned *height, bool is_shutdown)
{
   unsigned new_width = 0;
   unsigned new_height = 0;

   *quit = 0;

   gfx_ctx_cgl_get_video_size(data, &new_width, &new_height);
   if (new_width != *width || new_height != *height)
   {
      *width = new_width;
      *height = new_height;
      *resize = 1;
   }
}
