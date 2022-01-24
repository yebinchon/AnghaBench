#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int width; unsigned int height; float font_msg_pos_x; float font_msg_pos_y; float font_msg_color_r; float font_msg_color_g; float font_msg_color_b; } ;
typedef  TYPE_3__ video_frame_info_t ;
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct font_params {float x; float y; int drop_x; int drop_y; float drop_mod; float drop_alpha; float scale; unsigned int text_align; int /*<<< orphan*/  color; } ;
struct TYPE_11__ {TYPE_2__* gdi; } ;
typedef  TYPE_4__ gdi_raster_t ;
struct TYPE_12__ {int cx; unsigned int cy; int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {scalar_t__ bmp_old; int /*<<< orphan*/  memDC; scalar_t__ bmp; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_5__ SIZE ;
typedef  scalar_t__ HBITMAP ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEXT_ALIGN_CENTER 130 
#define  TEXT_ALIGN_LEFT 129 
#define  TEXT_ALIGN_RIGHT 128 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*) ; 
 struct string_list* FUNC11 (char const*,char*) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(
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
   gdi_raster_t *font               = (gdi_raster_t*)data;
   unsigned width                   = video_info->width;
   unsigned height                  = video_info->height;
   SIZE textSize = {0};
   struct string_list *msg_list = NULL;

   if (!font || FUNC9(msg) || !font->gdi)
      return;

   if (params)
   {
      x          = params->x;
      y          = params->y;
      drop_x     = params->drop_x;
      drop_y     = params->drop_y;
      drop_mod   = params->drop_mod;
      drop_alpha = params->drop_alpha;
      scale      = params->scale;
      align      = params->text_align;

      red        = FUNC2(params->color);
      green      = FUNC1(params->color);
      blue       = FUNC0(params->color);
   }
   else
   {
      x          = video_info->font_msg_pos_x;
      y          = video_info->font_msg_pos_y;
      drop_x     = -2;
      drop_y     = -2;
      drop_mod   = 0.3f;
      drop_alpha = 1.0f;
      scale      = 1.0f;
      align      = TEXT_ALIGN_LEFT;
      red        = video_info->font_msg_color_r * 255.0f;
      green      = video_info->font_msg_color_g * 255.0f;
      blue       = video_info->font_msg_color_b * 255.0f;
   }

   msg_strlen = FUNC12(msg);

   FUNC3(font->gdi->memDC, msg, msg_strlen, &textSize);

   switch (align)
   {
      case TEXT_ALIGN_LEFT:
         newX = x * width * scale;
         newDropX = drop_x * width * scale;
         break;
      case TEXT_ALIGN_RIGHT:
         newX = (x * width * scale) - textSize.cx;
         newDropX = (drop_x * width * scale) - textSize.cx;
         break;
      case TEXT_ALIGN_CENTER:
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

   font->gdi->bmp_old = (HBITMAP)FUNC5(font->gdi->memDC, font->gdi->bmp);

   FUNC6(font->gdi->memDC, TRANSPARENT);

   msg_list = FUNC11(msg, "\n");

   if (drop_x || drop_y)
   {
      float dark_alpha = drop_alpha;
      drop_red   = red * drop_mod * dark_alpha;
      drop_green = green * drop_mod * dark_alpha;
      drop_blue  = blue * drop_mod * dark_alpha;

      FUNC7(font->gdi->memDC, FUNC4(drop_red, drop_green, drop_blue));

      if (msg_list)
      {
         for (i = 0; i < msg_list->size; i++)
            FUNC8(font->gdi->memDC, newDropX, newDropY + (textSize.cy * i), msg_list->elems[i].data, FUNC13(msg_list->elems[i].data));
      }
   }

   FUNC7(font->gdi->memDC, FUNC4(red, green, blue));

   if (msg_list)
   {
      for (i = 0; i < msg_list->size; i++)
         FUNC8(font->gdi->memDC, newX, newY + (textSize.cy * i), msg_list->elems[i].data, FUNC13(msg_list->elems[i].data));

      FUNC10(msg_list);
   }

   FUNC5(font->gdi->memDC, font->gdi->bmp_old);
}