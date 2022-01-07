
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {unsigned int width; unsigned int height; float font_msg_pos_x; float font_msg_pos_y; float font_msg_color_r; float font_msg_color_g; float font_msg_color_b; } ;
typedef TYPE_3__ video_frame_info_t ;
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct font_params {float x; float y; int drop_x; int drop_y; float drop_mod; float drop_alpha; float scale; unsigned int text_align; int color; } ;
struct TYPE_11__ {TYPE_2__* gdi; } ;
typedef TYPE_4__ gdi_raster_t ;
struct TYPE_12__ {int cx; unsigned int cy; int member_0; } ;
struct TYPE_9__ {scalar_t__ bmp_old; int memDC; scalar_t__ bmp; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_5__ SIZE ;
typedef scalar_t__ HBITMAP ;


 unsigned int FONT_COLOR_GET_BLUE (int ) ;
 unsigned int FONT_COLOR_GET_GREEN (int ) ;
 unsigned int FONT_COLOR_GET_RED (int ) ;
 int GetTextExtentPoint32 (int ,char const*,int,TYPE_5__*) ;
 int RGB (unsigned int,unsigned int,unsigned int) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;



 int TRANSPARENT ;
 int TextOut (int ,unsigned int,unsigned int,int ,int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 int strlen (char const*) ;
 int utf8len (int ) ;

__attribute__((used)) static void gdi_render_msg(
      video_frame_info_t *video_info,
      void *data, const char *msg,
      const struct font_params *params)
{
   float x, y, scale, drop_mod, drop_alpha;
   int drop_x, drop_y, msg_strlen;
   unsigned i;
   unsigned newX, newY, newDropX, newDropY;
   unsigned align;
   unsigned red, green, blue;
   unsigned drop_red, drop_green, drop_blue;
   gdi_raster_t *font = (gdi_raster_t*)data;
   unsigned width = video_info->width;
   unsigned height = video_info->height;
   SIZE textSize = {0};
   struct string_list *msg_list = ((void*)0);

   if (!font || string_is_empty(msg) || !font->gdi)
      return;

   if (params)
   {
      x = params->x;
      y = params->y;
      drop_x = params->drop_x;
      drop_y = params->drop_y;
      drop_mod = params->drop_mod;
      drop_alpha = params->drop_alpha;
      scale = params->scale;
      align = params->text_align;

      red = FONT_COLOR_GET_RED(params->color);
      green = FONT_COLOR_GET_GREEN(params->color);
      blue = FONT_COLOR_GET_BLUE(params->color);
   }
   else
   {
      x = video_info->font_msg_pos_x;
      y = video_info->font_msg_pos_y;
      drop_x = -2;
      drop_y = -2;
      drop_mod = 0.3f;
      drop_alpha = 1.0f;
      scale = 1.0f;
      align = 129;
      red = video_info->font_msg_color_r * 255.0f;
      green = video_info->font_msg_color_g * 255.0f;
      blue = video_info->font_msg_color_b * 255.0f;
   }

   msg_strlen = strlen(msg);

   GetTextExtentPoint32(font->gdi->memDC, msg, msg_strlen, &textSize);

   switch (align)
   {
      case 129:
         newX = x * width * scale;
         newDropX = drop_x * width * scale;
         break;
      case 128:
         newX = (x * width * scale) - textSize.cx;
         newDropX = (drop_x * width * scale) - textSize.cx;
         break;
      case 130:
         newX = (x * width * scale) - (textSize.cx / 2);
         newDropX = (drop_x * width * scale) - (textSize.cx / 2);
         break;
      default:
         newX = 0;
         newDropX = 0;
         break;
   }

   newY = height - (y * height * scale) - textSize.cy;
   newDropY = height - (drop_y * height * scale) - textSize.cy;

   font->gdi->bmp_old = (HBITMAP)SelectObject(font->gdi->memDC, font->gdi->bmp);

   SetBkMode(font->gdi->memDC, TRANSPARENT);

   msg_list = string_split(msg, "\n");

   if (drop_x || drop_y)
   {
      float dark_alpha = drop_alpha;
      drop_red = red * drop_mod * dark_alpha;
      drop_green = green * drop_mod * dark_alpha;
      drop_blue = blue * drop_mod * dark_alpha;

      SetTextColor(font->gdi->memDC, RGB(drop_red, drop_green, drop_blue));

      if (msg_list)
      {
         for (i = 0; i < msg_list->size; i++)
            TextOut(font->gdi->memDC, newDropX, newDropY + (textSize.cy * i), msg_list->elems[i].data, utf8len(msg_list->elems[i].data));
      }
   }

   SetTextColor(font->gdi->memDC, RGB(red, green, blue));

   if (msg_list)
   {
      for (i = 0; i < msg_list->size; i++)
         TextOut(font->gdi->memDC, newX, newY + (textSize.cy * i), msg_list->elems[i].data, utf8len(msg_list->elems[i].data));

      string_list_free(msg_list);
   }

   SelectObject(font->gdi->memDC, font->gdi->bmp_old);
}
