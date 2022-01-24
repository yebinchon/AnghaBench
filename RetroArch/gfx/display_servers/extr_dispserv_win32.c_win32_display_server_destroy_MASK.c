#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  dispserv_win32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crt_center ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * g_taskbarList ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ win32_orig_height ; 
 scalar_t__ win32_orig_refresh ; 
 scalar_t__ win32_orig_width ; 

__attribute__((used)) static void FUNC3(void *data)
{
   dispserv_win32_t *dispserv = (dispserv_win32_t*)data;

   if (win32_orig_width > 0 && win32_orig_height > 0)
      FUNC2(win32_orig_width, win32_orig_height,
            win32_orig_refresh, (float)win32_orig_refresh, crt_center, 0, 0);

#ifdef HAS_TASKBAR_EXT
   if (g_taskbarList)
   {
      ITaskbarList3_Release(g_taskbarList);
      g_taskbarList = NULL;
   }
#endif

   if (dispserv)
      FUNC1(dispserv);
}