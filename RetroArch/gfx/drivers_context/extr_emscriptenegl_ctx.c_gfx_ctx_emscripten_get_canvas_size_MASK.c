#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int screenWidth; int screenHeight; scalar_t__ isFullscreen; } ;
typedef  TYPE_1__ EmscriptenFullscreenChangeEvent ;
typedef  scalar_t__ EMSCRIPTEN_RESULT ;

/* Variables and functions */
 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int*,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(int *width, int *height)
{
   EmscriptenFullscreenChangeEvent fullscreen_status;
   bool  is_fullscreen = false;
   EMSCRIPTEN_RESULT r = FUNC2(&fullscreen_status);

   if (r == EMSCRIPTEN_RESULT_SUCCESS)
   {
      if (fullscreen_status.isFullscreen)
      {
         is_fullscreen = true;
         *width = fullscreen_status.screenWidth;
         *height = fullscreen_status.screenHeight;
      }
   }

   if (!is_fullscreen)
   {
      r = FUNC1("#canvas", width, height);

      if (r != EMSCRIPTEN_RESULT_SUCCESS)
      {
         FUNC0("[EMSCRIPTEN/EGL]: Could not get screen dimensions: %d\n",
            r);
         *width = 800;
         *height = 600;
      }
   }
}