
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float font_msg_pos_x; float font_msg_pos_y; } ;
typedef TYPE_2__ video_frame_info_t ;
struct font_params {float x; float y; float scale; unsigned int text_align; } ;
struct TYPE_7__ {TYPE_1__* sixel; } ;
typedef TYPE_3__ sixel_raster_t ;
struct TYPE_5__ {unsigned int screen_width; unsigned int screen_height; } ;





 scalar_t__ string_is_empty (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void sixel_render_msg(video_frame_info_t *video_info,
      void *data, const char *msg,
      const struct font_params *userdata)
{
   float x, y, scale;
   unsigned width, height;
   unsigned newX, newY;
   unsigned align;
   sixel_raster_t *font = (sixel_raster_t*)data;
   const struct font_params *params = (const struct font_params*)userdata;

   (void)newX;
   (void)newY;

   if (!font || string_is_empty(msg))
      return;

   if (params)
   {
      x = params->x;
      y = params->y;
      scale = params->scale;
      align = params->text_align;
   }
   else
   {
      x = video_info->font_msg_pos_x;
      y = video_info->font_msg_pos_y;
      scale = 1.0f;
      align = 129;
   }

   if (!font->sixel)
      return;

   width = font->sixel->screen_width;
   height = font->sixel->screen_height;
   newY = height - (y * height * scale);

   switch (align)
   {
      case 128:
         newX = (x * width * scale) - strlen(msg);
         break;
      case 130:
         newX = (x * width * scale) - (strlen(msg) / 2);
         break;
      case 129:
      default:
         newX = x * width * scale;
         break;
   }


}
