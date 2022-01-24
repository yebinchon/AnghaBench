#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ sdl2_video_t ;
struct TYPE_7__ {int h; int pitch; int /*<<< orphan*/  pixels; } ;
typedef  TYPE_2__ SDL_Surface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_PIXELFORMAT_BGR24 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static bool FUNC6(void *data, uint8_t *buffer, bool is_idle)
{
   SDL_Surface *surf = NULL, *bgr24 = NULL;
   sdl2_video_t *vid = (sdl2_video_t*)data;

   if (!is_idle)
      FUNC5();

   surf  = FUNC3(vid->window);
   bgr24 = FUNC1(surf, SDL_PIXELFORMAT_BGR24, 0);

   if (!bgr24)
   {
      FUNC0("Failed to convert viewport data to BGR24: %s", FUNC2());
      return false;
   }

   FUNC4(buffer, bgr24->pixels, bgr24->h * bgr24->pitch);

   return true;
}