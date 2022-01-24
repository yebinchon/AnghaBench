#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {float width; float height; int /*<<< orphan*/ * texture; scalar_t__ active; } ;
struct TYPE_11__ {float width; float height; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_13__ {unsigned int width; unsigned int height; scalar_t__ format; float const rotation; TYPE_2__ menu; scalar_t__ fullscreen; scalar_t__ overlay_enable; TYPE_1__ vp; int /*<<< orphan*/ * texture; scalar_t__ should_resize; int /*<<< orphan*/  tex_filter; } ;
typedef  TYPE_3__ vita_video_t ;
struct TYPE_14__ {char const* stat_text; int /*<<< orphan*/  osd_stat_params; scalar_t__ statistics_show; } ;
typedef  TYPE_4__ video_frame_info_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct font_params {int dummy; } ;

/* Variables and functions */
 float PSP_FB_HEIGHT ; 
 float PSP_FB_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 scalar_t__ SCE_GXM_TEXTURE_FORMAT_X8U8U8U8_1RGB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,char const*,struct font_params const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned int,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,float,float const) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void const* FUNC16 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC19(void *data, const void *frame,
      unsigned width, unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   void *tex_p;
   vita_video_t *vita = (vita_video_t *)data;

   if (frame)
   {
      if(!(vita->texture&&FUNC16(vita->texture)==frame))
      {
         unsigned i;
         unsigned int stride;

         if ((width != vita->width || height != vita->height) && vita->texture)
         {
            FUNC10(vita->texture);
            vita->texture = NULL;
         }

         if (!vita->texture)
         {
            FUNC0("Creating texture: %ix%i\n", width, height);
            vita->width = width;
            vita->height = height;
            vita->texture = FUNC5(width, height, vita->format);
            FUNC18(vita->texture,vita->tex_filter,vita->tex_filter);
         }
         tex_p = FUNC16(vita->texture);
         stride = FUNC17(vita->texture);

         if (vita->format == SCE_GXM_TEXTURE_FORMAT_X8U8U8U8_1RGB)
         {
            stride                     /= 4;
            pitch                      /= 4;
            uint32_t             *tex32 = tex_p;
            const uint32_t     *frame32 = frame;

            for (i = 0; i < height; i++)
               FUNC2(&tex32[i*stride],&frame32[i*pitch],pitch*sizeof(uint32_t));
         }
         else
         {
            stride                 /= 2;
            pitch                  /= 2;
            uint16_t *tex16         = tex_p;
            const uint16_t *frame16 = frame;

            for (i = 0; i < height; i++)
               FUNC2(&tex16[i*stride],&frame16[i*pitch],width*sizeof(uint16_t));
         }
      }
   }

   if (vita->should_resize)
      FUNC12(vita, video_info);

   FUNC14();

   FUNC6(0,0,PSP_FB_WIDTH,PSP_FB_HEIGHT,FUNC11());

   if (vita->texture)
   {
      if (vita->fullscreen)
         FUNC7(vita->texture,
               0, 0,
               PSP_FB_WIDTH  / (float)vita->width,
               PSP_FB_HEIGHT / (float)vita->height);
      else
      {
         const float radian = 90 * 0.0174532925f;
         const float rad = vita->rotation * radian;
         float scalex = vita->vp.width / (float)vita->width;
         float scaley = vita->vp.height / (float)vita->height;
         FUNC8(vita->texture,vita->vp.x,
               vita->vp.y, scalex, scaley, rad);
      }
   }

#ifdef HAVE_OVERLAY
   if (vita->overlay_enable)
      vita2d_render_overlay(vita);
#endif

   if (vita->menu.active)
   {
#ifdef HAVE_MENU
      menu_driver_frame(video_info);
#endif

      if(vita->menu.texture)
      {
         if (vita->fullscreen)
            FUNC7(vita->menu.texture,
                  0, 0,
                  PSP_FB_WIDTH  / (float)vita->menu.width,
                  PSP_FB_HEIGHT / (float)vita->menu.height);
         else
         {
            if (vita->menu.width > vita->menu.height)
            {
               float scale = PSP_FB_HEIGHT / (float)vita->menu.height;
               float w = vita->menu.width * scale;
               FUNC7(vita->menu.texture,
                     PSP_FB_WIDTH / 2.0f - w/2.0f, 0.0f,
                     scale, scale);
            }
            else
            {
               float scale = PSP_FB_WIDTH / (float)vita->menu.width;
               float h = vita->menu.height * scale;
               FUNC7(vita->menu.texture,
                     0.0f, PSP_FB_HEIGHT / 2.0f - h/2.0f,
                     scale, scale);
            }
         }
      }
   }
   else if (video_info->statistics_show)
   {
      struct font_params *osd_params = (struct font_params*)
         &video_info->osd_stat_params;

      if (osd_params)
      {
         FUNC1(video_info, NULL, video_info->stat_text,
               (const struct font_params*)&video_info->osd_stat_params);
      }
   }

   if(!FUNC4(msg))
      FUNC1(video_info, NULL, msg, NULL);

   FUNC9();
   FUNC15();

   return true;
}