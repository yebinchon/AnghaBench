
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float font_msg_pos_x; float font_msg_pos_y; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_5__ {int vga; } ;
typedef TYPE_2__ vga_raster_t ;
struct font_params {float x; float y; float scale; unsigned int text_align; } ;





 unsigned int VGA_HEIGHT ;
 unsigned int VGA_WIDTH ;
 scalar_t__ string_is_empty (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void vga_render_msg(video_frame_info_t *video_info,
      void *data, const char *msg,
      const struct font_params *params)
{
   float x, y, scale;
   unsigned width, height;
   unsigned newX, newY;
   unsigned align;
   vga_raster_t *font = (vga_raster_t*)data;

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

   if (!font->vga)
      return;

   width = VGA_WIDTH;
   height = VGA_HEIGHT;
   newY = height - (y * height * scale);

   switch (align)
   {
      case 129:
         newX = x * width * scale;
         break;
      case 128:
         newX = (x * width * scale) - strlen(msg);
         break;
      case 130:
         newX = (x * width * scale) - (strlen(msg) / 2);
         break;
      default:
         break;
   }
}
