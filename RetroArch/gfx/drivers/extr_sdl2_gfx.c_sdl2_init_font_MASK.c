#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct font_atlas {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  buffer; } ;
struct TYPE_12__ {int video_msg_color_r; int video_msg_color_g; int video_msg_color_b; } ;
struct TYPE_11__ {int /*<<< orphan*/  video_font_enable; } ;
struct TYPE_14__ {TYPE_2__ floats; TYPE_1__ bools; } ;
typedef  TYPE_4__ settings_t ;
struct TYPE_13__ {int active; int /*<<< orphan*/  tex; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_15__ {int font_r; int font_g; int font_b; TYPE_3__ font; int /*<<< orphan*/  renderer; int /*<<< orphan*/  font_data; TYPE_8__* font_driver; } ;
typedef  TYPE_5__ sdl2_video_t ;
struct TYPE_17__ {struct font_atlas* (* get_atlas ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {int r; int g; int b; int a; } ;
typedef  int /*<<< orphan*/  SDL_Surface ;
typedef  int /*<<< orphan*/  SDL_Palette ;
typedef  TYPE_6__ SDL_Color ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  SDL_BLENDMODE_ADD ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_TRUE ; 
 TYPE_4__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__**,int /*<<< orphan*/ *,char const*,unsigned int) ; 
 struct font_atlas* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(sdl2_video_t *vid, const char *font_path,
                          unsigned font_size)
{
   int i, r, g, b;
   SDL_Color colors[256];
   SDL_Surface *tmp = NULL;
   SDL_Palette *pal = NULL;
   const struct font_atlas *atlas = NULL;
   settings_t *settings = FUNC11();

   if (!settings->bools.video_font_enable)
      return;

   if (!FUNC12(
            &vid->font_driver, &vid->font_data,
            *font_path ? font_path : NULL, font_size))
   {
      FUNC0("[SDL]: Could not initialize fonts.\n");
      return;
   }

   r = settings->floats.video_msg_color_r * 255;
   g = settings->floats.video_msg_color_g * 255;
   b = settings->floats.video_msg_color_b * 255;

   r = (r < 0) ? 0 : (r > 255 ? 255 : r);
   g = (g < 0) ? 0 : (g > 255 ? 255 : g);
   b = (b < 0) ? 0 : (b > 255 ? 255 : b);

   vid->font_r = r;
   vid->font_g = g;
   vid->font_b = b;

   atlas = vid->font_driver->get_atlas(vid->font_data);

   tmp = FUNC2(atlas->buffer, atlas->width,
         atlas->height, 8, atlas->width,
         0, 0, 0, 0);

   for (i = 0; i < 256; ++i)
   {
      colors[i].r = colors[i].g = colors[i].b = i;
      colors[i].a = 255;
   }

   pal = FUNC1(256);
   FUNC8(pal, colors, 0, 256);
   FUNC9(tmp, pal);
   FUNC7(tmp, SDL_TRUE, 0);

   vid->font.tex  = FUNC3(vid->renderer, tmp);

   if (vid->font.tex)
   {
      vid->font.w      = atlas->width;
      vid->font.h      = atlas->height;
      vid->font.active = true;

      FUNC10(vid->font.tex, SDL_BLENDMODE_ADD);
   }
   else
      FUNC0("[SDL]: Failed to initialize font texture: %s\n", FUNC6());

   FUNC4(pal);
   FUNC5(tmp);
}