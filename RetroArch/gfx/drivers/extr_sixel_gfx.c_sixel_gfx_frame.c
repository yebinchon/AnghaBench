
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ menu_is_alive; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef int uint64_t ;
struct TYPE_7__ {unsigned int screen_width; unsigned int screen_height; unsigned int video_width; unsigned int video_height; int sixel_status; } ;
typedef TYPE_2__ sixel_t ;
typedef int gfx_ctx_mode_t ;


 int SIXEL_COLORS ;
 scalar_t__ SIXEL_FAILED (int ) ;
 unsigned int SIXEL_PIXELFORMAT_BGRA8888 ;
 unsigned int SIXEL_PIXELFORMAT_RGB565 ;
 unsigned int SIXEL_PIXELFORMAT_RGBA8888 ;
 int font_driver_render_msg (TYPE_1__*,int *,char const*,int *) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int menu_driver_frame (TYPE_1__*) ;
 int output_sixel (unsigned char*,unsigned int,unsigned int,int ,unsigned int) ;
 int printf (char*) ;
 int scroll_on_demand (unsigned int) ;
 char* sixel_helper_format_error (int ) ;
 char* sixel_helper_get_additional_message () ;
 unsigned int sixel_menu_bits ;
 void const* sixel_menu_frame ;
 unsigned int sixel_menu_height ;
 unsigned int sixel_menu_pitch ;
 unsigned int sixel_menu_width ;
 int* sixel_temp_buf ;
 unsigned int sixel_video_bits ;
 unsigned int sixel_video_height ;
 unsigned int sixel_video_pitch ;
 unsigned int sixel_video_scale ;
 unsigned int sixel_video_width ;
 int stderr ;

__attribute__((used)) static bool sixel_gfx_frame(void *data, const void *frame,
      unsigned frame_width, unsigned frame_height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   gfx_ctx_mode_t mode;
   const void *frame_to_copy = frame;
   unsigned width = 0;
   unsigned height = 0;
   unsigned bits = sixel_video_bits;
   unsigned pixfmt = SIXEL_PIXELFORMAT_RGB565;
   bool draw = 1;
   sixel_t *sixel = (sixel_t*)data;

   if (!frame || !frame_width || !frame_height)
      return 1;





   if (sixel_video_width != frame_width || sixel_video_height != frame_height || sixel_video_pitch != pitch)
   {
      if (frame_width > 4 && frame_height > 4)
      {
         sixel_video_width = frame_width;
         sixel_video_height = frame_height;
         sixel_video_pitch = pitch;
         sixel->screen_width = sixel_video_width * sixel_video_scale;
         sixel->screen_height = sixel_video_height * sixel_video_scale;
      }
   }

   if (sixel_menu_frame && video_info->menu_is_alive)
   {
      frame_to_copy = sixel_menu_frame;
      width = sixel_menu_width;
      height = sixel_menu_height;
      pitch = sixel_menu_pitch;
      bits = sixel_menu_bits;
   }
   else
   {
      width = sixel_video_width;
      height = sixel_video_height;
      pitch = sixel_video_pitch;

      if (frame_width == 4 && frame_height == 4 && (frame_width < width && frame_height < height))
         draw = 0;

      if (video_info->menu_is_alive)
         draw = 0;
   }

   if (sixel->video_width != width || sixel->video_height != height)
   {
      scroll_on_demand(sixel->screen_height);

      sixel->video_width = width;
      sixel->video_height = height;

      if (sixel_temp_buf)
      {
         free(sixel_temp_buf);
      }

      sixel_temp_buf = (unsigned*)malloc(sixel->screen_width * sixel->screen_height * sizeof(unsigned));
   }

   if (bits == 16)
   {
      if (sixel_temp_buf)
      {
         if (frame_to_copy == sixel_menu_frame)
         {

            unsigned x, y;

            for (y = 0; y < sixel->screen_height; y++)
            {
               for (x = 0; x < sixel->screen_width; x++)
               {

                  unsigned scaled_x = (width * x) / sixel->screen_width;
                  unsigned scaled_y = (height * y) / sixel->screen_height;
                  unsigned short pixel = ((unsigned short*)frame_to_copy)[width * scaled_y + scaled_x];


                  unsigned r = ((pixel & 0xF000) << 8) | ((pixel & 0xF000) << 4);
                  unsigned g = ((pixel & 0x0F00) << 4) | ((pixel & 0x0F00) << 0);
                  unsigned b = ((pixel & 0x00F0) << 0) | ((pixel & 0x00F0) >> 4);

                  sixel_temp_buf[sixel->screen_width * y + x] = 0xFF000000 | b | g | r;
               }
            }

            pixfmt = SIXEL_PIXELFORMAT_RGBA8888;
            frame_to_copy = sixel_temp_buf;
         }
         else
         {

            unsigned x, y;

            for (y = 0; y < sixel->screen_height; y++)
            {
               for (x = 0; x < sixel->screen_width; x++)
               {

                  unsigned scaled_x = (width * x) / sixel->screen_width;
                  unsigned scaled_y = (height * y) / sixel->screen_height;
                  unsigned short pixel = ((unsigned short*)frame_to_copy)[(pitch / (bits / 8)) * scaled_y + scaled_x];


                  unsigned r = ((pixel & 0x001F) << 3) | ((pixel & 0x001C) >> 2);
                  unsigned g = ((pixel & 0x07E0) << 5) | ((pixel & 0x0600) >> 1);
                  unsigned b = ((pixel & 0xF800) << 8) | ((pixel & 0xE000) << 3);

                  sixel_temp_buf[sixel->screen_width * y + x] = 0xFF000000 | b | g | r;
               }
            }

            pixfmt = SIXEL_PIXELFORMAT_BGRA8888;
            frame_to_copy = sixel_temp_buf;
         }
      }
      else
      {

      }
   }
   else
   {

      unsigned x, y;

      for (y = 0; y < sixel->screen_height; y++)
      {
         for (x = 0; x < sixel->screen_width; x++)
         {

            unsigned scaled_x = (width * x) / sixel->screen_width;
            unsigned scaled_y = (height * y) / sixel->screen_height;
            unsigned pixel = ((unsigned*)frame_to_copy)[(pitch / (bits / 8)) * scaled_y + scaled_x];

            sixel_temp_buf[sixel->screen_width * y + x] = pixel;
         }
      }

      pixfmt = SIXEL_PIXELFORMAT_BGRA8888;
      frame_to_copy = sixel_temp_buf;
   }

   if (draw && sixel->screen_width > 0 && sixel->screen_height > 0)
   {
      printf("\0338");

      sixel->sixel_status = output_sixel((unsigned char*)frame_to_copy, sixel->screen_width, sixel->screen_height,
            SIXEL_COLORS, pixfmt);

      if (SIXEL_FAILED(sixel->sixel_status))
      {
         fprintf(stderr, "%s\n%s\n",
               sixel_helper_format_error(sixel->sixel_status),
               sixel_helper_get_additional_message());
      }
   }

   if (msg)
      font_driver_render_msg(video_info, ((void*)0), msg, ((void*)0));

   return 1;
}
