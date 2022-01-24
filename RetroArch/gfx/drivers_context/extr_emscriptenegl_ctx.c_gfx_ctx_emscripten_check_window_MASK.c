#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fb_width; int fb_height; } ;
typedef  TYPE_1__ emscripten_ctx_data_t ;
typedef  scalar_t__ EMSCRIPTEN_RESULT ;

/* Variables and functions */
 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int emscripten_initial_height ; 
 int emscripten_initial_width ; 
 scalar_t__ FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (char*,double,double) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 

__attribute__((used)) static void FUNC4(void *data, bool *quit,
      bool *resize, unsigned *width, unsigned *height, bool is_shutdown)
{
   EMSCRIPTEN_RESULT r;
   int input_width;
   int input_height;
   emscripten_ctx_data_t *emscripten = (emscripten_ctx_data_t*)data;

   FUNC3(&input_width, &input_height);

   if (input_width == 0 || input_height == 0)
   {
      input_width = emscripten_initial_width;
      input_height = emscripten_initial_height;
      emscripten->fb_width = emscripten->fb_height = 0;
   }

   *width      = (unsigned)input_width;
   *height     = (unsigned)input_height;
   *resize     = false;

   if (input_width != emscripten->fb_width ||
      input_height != emscripten->fb_height)
   {
      r = FUNC1("#canvas",
         input_width, input_height);

      if (r != EMSCRIPTEN_RESULT_SUCCESS)
         FUNC0("[EMSCRIPTEN/EGL]: error resizing canvas: %d\n", r);

      /* fix Module.requestFullscreen messing with the canvas size */
      r = FUNC2("#canvas",
         (double)input_width, (double)input_height);

      if (r != EMSCRIPTEN_RESULT_SUCCESS)
         FUNC0("[EMSCRIPTEN/EGL]: error resizing canvas css: %d\n", r);

      *resize  = true;
   }

   emscripten->fb_width  = (unsigned)input_width;
   emscripten->fb_height = (unsigned)input_height;
   *quit       = false;
}