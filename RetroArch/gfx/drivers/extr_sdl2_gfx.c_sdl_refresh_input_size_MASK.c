#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ smooth; } ;
struct TYPE_8__ {unsigned int w; unsigned int h; int rgb32; unsigned int pitch; int active; int /*<<< orphan*/  tex; } ;
struct TYPE_7__ {int /*<<< orphan*/  renderer; TYPE_1__ video; TYPE_3__ frame; TYPE_3__ menu; } ;
typedef  TYPE_2__ sdl2_video_t ;
typedef  TYPE_3__ sdl2_tex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_BLENDMODE_BLEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SDL_HINT_OVERRIDE ; 
 int /*<<< orphan*/  SDL_HINT_RENDER_SCALE_QUALITY ; 
 unsigned int SDL_PIXELFORMAT_ARGB8888 ; 
 unsigned int SDL_PIXELFORMAT_RGB565 ; 
 unsigned int SDL_PIXELFORMAT_RGBA4444 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_TEXTUREACCESS_STREAMING ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(sdl2_video_t *vid, bool menu, bool rgb32,
      unsigned width, unsigned height, unsigned pitch)
{
   sdl2_tex_t *target = menu ? &vid->menu : &vid->frame;

   if (!target->tex || target->w != width || target->h != height
       || target->rgb32 != rgb32 || target->pitch != pitch)
   {
      unsigned format;

      FUNC5(target);

      if (menu)
         format = rgb32 ? SDL_PIXELFORMAT_ARGB8888 : SDL_PIXELFORMAT_RGBA4444;
      else /* this assumes the frontend will convert 0RGB1555 to RGB565 */
         format = rgb32 ? SDL_PIXELFORMAT_ARGB8888 : SDL_PIXELFORMAT_RGB565;

      FUNC3(SDL_HINT_RENDER_SCALE_QUALITY,
                              (vid->video.smooth || menu) ? "linear" : "nearest",
                              SDL_HINT_OVERRIDE);

      target->tex = FUNC1(vid->renderer, format,
                                      SDL_TEXTUREACCESS_STREAMING, width, height);

      if (!target->tex)
      {
         FUNC0("[SDL2]: Failed to create %s texture: %s\n", menu ? "menu" : "main",
                   FUNC2());
         return;
      }

      if (menu)
         FUNC4(target->tex, SDL_BLENDMODE_BLEND);

      target->w = width;
      target->h = height;
      target->pitch = pitch;
      target->rgb32 = rgb32;
      target->active = true;
   }
}