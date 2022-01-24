#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_13__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_2__ VC_RECT_T ;
struct TYPE_14__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ VC_DISPMANX_ALPHA_T ;
struct TYPE_12__ {int width; int height; int /*<<< orphan*/  element; } ;
struct TYPE_15__ {TYPE_1__ egl_win; } ;
typedef  TYPE_4__ GX_NATIVE_WINDOW_T ;
typedef  int /*<<< orphan*/  GRAPHICS_RESOURCE_TYPE_T ;
typedef  scalar_t__ DISPMANX_UPDATE_HANDLE_T ;
typedef  int /*<<< orphan*/  DISPMANX_DISPLAY_HANDLE_T ;
typedef  TYPE_3__ DISPMANX_CLAMP_T ;

/* Variables and functions */
 int /*<<< orphan*/  DISPMANX_FLAGS_ALPHA_FROM_SOURCE ; 
 int /*<<< orphan*/  DISPMANX_PROTECTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int FUNC7(uint32_t screen_id,
                                 uint32_t w, uint32_t h,
                                 GRAPHICS_RESOURCE_TYPE_T type,
                                 GX_NATIVE_WINDOW_T *win,
                                 void **cookie)
{
   int rc;
   DISPMANX_DISPLAY_HANDLE_T dispmanx_display;
   VC_RECT_T dst_rect;
   VC_RECT_T src_rect;
   DISPMANX_UPDATE_HANDLE_T current_update;
   *cookie = NULL;

   rc = FUNC1(screen_id, &dispmanx_display);
   if (rc < 0)
   {
      FUNC0("Could not open display %d", screen_id);
      goto fail_screen;
   }

   current_update = FUNC5(0);
   if (!current_update)
   {
      FUNC0("Could not start update on screen %d", screen_id);
      goto fail_update;
   }

   src_rect.x = src_rect.y = 0;
   src_rect.width = w << 16;
   src_rect.height = h << 16;

   dst_rect.x = dst_rect.y = 0;
   dst_rect.width = dst_rect.height = 1;

   win->egl_win.width = w;
   win->egl_win.height = h;
   VC_DISPMANX_ALPHA_T alpha;
   FUNC3(&alpha, 0x0, sizeof(VC_DISPMANX_ALPHA_T));
   alpha.flags = DISPMANX_FLAGS_ALPHA_FROM_SOURCE;

   DISPMANX_CLAMP_T clamp;
   FUNC3(&clamp, 0x0, sizeof(DISPMANX_CLAMP_T));

   win->egl_win.element = FUNC4(current_update, dispmanx_display,
      0 /* layer */, &dst_rect,
      0 /* src */, &src_rect,
      DISPMANX_PROTECTION_NONE,
      &alpha /* alpha */,
      &clamp /* clamp */,
      0 /* transform */);

   if ( !win->egl_win.element )
   {
      FUNC0("Could not add element %dx%d",w,h);
      FUNC6(current_update);
      rc = -1;
   }

   // have to pass back the update so it can be completed *After* the
   // window has been initialised (filled with background colour).
   *cookie = (void*)current_update;

   return 0;

fail_update:
   FUNC2(screen_id);
fail_screen:
   return rc;
}