
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ menu_is_alive; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef int uint64_t ;


 int caca_clear_canvas (int ) ;
 int caca_cv ;
 int caca_display ;
 int caca_dither ;
 int caca_dither_bitmap (int ,int ,int ,unsigned int,unsigned int,int ,void const*) ;
 void* caca_export_canvas_to_memory (int ,char*,size_t*) ;
 unsigned int caca_get_canvas_height (int ) ;
 unsigned int caca_get_canvas_width (int ) ;
 int caca_gfx_create () ;
 int caca_gfx_free (int *) ;
 void* caca_menu_frame ;
 int caca_refresh_display (int ) ;
 unsigned int caca_video_height ;
 unsigned int caca_video_pitch ;
 unsigned int caca_video_width ;
 int font_driver_render_msg (TYPE_1__*,int *,char const*,int *) ;
 int free (void*) ;
 int menu_driver_frame (TYPE_1__*) ;

__attribute__((used)) static bool caca_gfx_frame(void *data, const void *frame,
      unsigned frame_width, unsigned frame_height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   size_t len = 0;
   void *buffer = ((void*)0);
   const void *frame_to_copy = frame;
   unsigned width = 0;
   unsigned height = 0;
   bool draw = 1;

   (void)data;
   (void)frame;
   (void)frame_width;
   (void)frame_height;
   (void)pitch;
   (void)msg;

   if (!frame || !frame_width || !frame_height)
      return 1;

   if ( caca_video_width != frame_width ||
         caca_video_height != frame_height ||
         caca_video_pitch != pitch)
   {
      if (frame_width > 4 && frame_height > 4)
      {
         caca_video_width = frame_width;
         caca_video_height = frame_height;
         caca_video_pitch = pitch;
         caca_gfx_free(((void*)0));
         caca_gfx_create();
      }
   }

   if (!caca_cv)
      return 1;

   if (caca_menu_frame && video_info->menu_is_alive)
      frame_to_copy = caca_menu_frame;

   width = caca_get_canvas_width(caca_cv);
   height = caca_get_canvas_height(caca_cv);

   if ( frame_to_copy == frame &&
         frame_width == 4 &&
         frame_height == 4 &&
         (frame_width < width && frame_height < height))
      draw = 0;

   if (video_info->menu_is_alive)
      draw = 0;

   caca_clear_canvas(caca_cv);





   if (msg)
      font_driver_render_msg(video_info, ((void*)0), msg, ((void*)0));

   if (draw)
   {
      caca_dither_bitmap(caca_cv, 0, 0,
            width,
            height,
            caca_dither, frame_to_copy);

      buffer = caca_export_canvas_to_memory(caca_cv, "caca", &len);

      if (buffer)
      {
         if (len)
            caca_refresh_display(caca_display);

         free(buffer);
      }
   }

   return 1;
}
