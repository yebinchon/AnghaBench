#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ libretro_running; } ;
typedef  TYPE_4__ video_frame_info_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  title ;
struct TYPE_13__ {int /*<<< orphan*/  tex; scalar_t__ active; } ;
struct TYPE_12__ {int /*<<< orphan*/  tex; } ;
struct TYPE_11__ {int /*<<< orphan*/  rgb32; } ;
struct TYPE_15__ {int /*<<< orphan*/  renderer; TYPE_3__ menu; int /*<<< orphan*/  rotation; TYPE_2__ frame; TYPE_1__ video; scalar_t__ should_resize; } ;
typedef  TYPE_5__ sdl2_video_t ;
typedef  int /*<<< orphan*/  SDL_Window ;

/* Variables and functions */
 int /*<<< orphan*/  SDL_FLIP_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

__attribute__((used)) static bool FUNC12(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   char title[128];

   if (vid->should_resize)
      FUNC9(vid);

   if (frame && video_info->libretro_running)
   {
      FUNC0(vid->renderer);
      FUNC8(vid, false, vid->video.rgb32, width, height, pitch);
      FUNC5(vid->frame.tex, NULL, frame, pitch);
   }

   FUNC2(vid->renderer, vid->frame.tex, NULL, NULL, vid->rotation, NULL, SDL_FLIP_NONE);

#ifdef HAVE_MENU
   menu_driver_frame(video_info);
#endif

   if (vid->menu.active)
      FUNC1(vid->renderer, vid->menu.tex, NULL, NULL);

   if (msg)
      FUNC7(vid, msg);

   FUNC3(vid->renderer);

   title[0] = '\0';

   FUNC11(title, sizeof(title));

   if (title[0])
      FUNC4((SDL_Window*)FUNC10(), title);

   return true;
}