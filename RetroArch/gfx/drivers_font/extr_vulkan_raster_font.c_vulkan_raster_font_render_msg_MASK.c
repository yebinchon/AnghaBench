#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_12__ {TYPE_9__ range; struct vk_vertex* pv; scalar_t__ vertices; TYPE_4__* vk; } ;
typedef  TYPE_3__ vulkan_raster_t ;
struct TYPE_11__ {float width; float height; } ;
struct TYPE_13__ {TYPE_2__ vp; TYPE_1__* chain; int /*<<< orphan*/  context; } ;
typedef  TYPE_4__ vk_t ;
struct TYPE_14__ {unsigned int width; unsigned int height; float font_msg_pos_x; float font_msg_pos_y; float font_msg_color_r; float font_msg_color_g; float font_msg_color_b; } ;
typedef  TYPE_5__ video_frame_info_t ;
struct vk_vertex {int dummy; } ;
struct font_params {float x; float y; float scale; int full_screen; int text_align; int drop_x; int drop_y; float drop_mod; float drop_alpha; int /*<<< orphan*/  color; } ;
typedef  enum text_alignment { ____Placeholder_text_alignment } text_alignment ;
struct TYPE_10__ {int /*<<< orphan*/  vbo; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 
 int TEXT_ALIGN_LEFT ; 
 unsigned int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char const*,float,float*,float,float,int) ; 

__attribute__((used)) static void FUNC9(
      video_frame_info_t *video_info,
      void *data, const char *msg,
      const struct font_params *params)
{
   float color[4], color_dark[4];
   int drop_x, drop_y;
   bool full_screen;
   unsigned max_glyphs;
   enum text_alignment text_align;
   float x, y, scale, drop_mod, drop_alpha;
   vk_t *vk                         = NULL;
   vulkan_raster_t *font            = (vulkan_raster_t*)data;
   unsigned width                   = video_info->width;
   unsigned height                  = video_info->height;

   if (!font || !msg || !*msg)
      return;

   vk             = font->vk;

   if (params)
   {
      x           = params->x;
      y           = params->y;
      scale       = params->scale;
      full_screen = params->full_screen;
      text_align  = params->text_align;
      drop_x      = params->drop_x;
      drop_y      = params->drop_y;
      drop_mod    = params->drop_mod;
      drop_alpha  = params->drop_alpha;

      color[0]    = FUNC3(params->color)   / 255.0f;
      color[1]    = FUNC2(params->color) / 255.0f;
      color[2]    = FUNC1(params->color)  / 255.0f;
      color[3]    = FUNC0(params->color) / 255.0f;

      /* If alpha is 0.0f, turn it into default 1.0f */
      if (color[3] <= 0.0f)
         color[3] = 1.0f;
   }
   else
   {
      x           = video_info->font_msg_pos_x;
      y           = video_info->font_msg_pos_y;
      scale       = 1.0f;
      full_screen = true;
      text_align  = TEXT_ALIGN_LEFT;
      drop_x      = -2;
      drop_y      = -2;
      drop_mod    = 0.3f;
      drop_alpha  = 1.0f;

      color[0]    = video_info->font_msg_color_r;
      color[1]    = video_info->font_msg_color_g;
      color[2]    = video_info->font_msg_color_b;
      color[3]    = 1.0f;
   }

   FUNC5(width, height, full_screen, false);

   max_glyphs = FUNC4(msg);
   if (drop_x || drop_y)
      max_glyphs *= 2;

   if (!FUNC6(font->vk->context, &font->vk->chain->vbo,
         6 * sizeof(struct vk_vertex) * max_glyphs, &font->range))
      return;

   font->vertices   = 0;
   font->pv         = (struct vk_vertex*)font->range.data;

   if (drop_x || drop_y)
   {
      color_dark[0] = color[0] * drop_mod;
      color_dark[1] = color[1] * drop_mod;
      color_dark[2] = color[2] * drop_mod;
      color_dark[3] = color[3] * drop_alpha;

      FUNC8(font, msg, scale, color_dark,
            x + scale * drop_x / vk->vp.width, y +
            scale * drop_y / vk->vp.height, text_align);
   }

   FUNC8(font, msg, scale,
         color, x, y, text_align);
   FUNC7(font);
}