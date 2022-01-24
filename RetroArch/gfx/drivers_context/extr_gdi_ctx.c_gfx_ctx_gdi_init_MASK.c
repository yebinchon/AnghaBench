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
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  void gfx_ctx_gdi_data_t ;
struct TYPE_3__ {int /*<<< orphan*/  lpfnWndProc; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ WNDCLASSEX ;

/* Variables and functions */
 int /*<<< orphan*/  WndProcGDI ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ g_win32_inited ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void *FUNC5(
      video_frame_info_t *video_info, void *video_driver)
{
   WNDCLASSEX wndclass     = {0};
   gfx_ctx_gdi_data_t *gdi = (gfx_ctx_gdi_data_t*)FUNC0(1, sizeof(*gdi));

   if (!gdi)
      return NULL;

   if (g_win32_inited)
      goto error;

   FUNC4();
   FUNC2();

   wndclass.lpfnWndProc   = WndProcGDI;
   if (!FUNC3(&wndclass, true, NULL))
      goto error;

   return gdi;

error:
   if (gdi)
      FUNC1(gdi);
   return NULL;
}