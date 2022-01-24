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
struct TYPE_2__ {int progress; } ;
typedef  TYPE_1__ dispserv_win32_t ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TBPF_INDETERMINATE ; 
 int /*<<< orphan*/  TBPF_NOPROGRESS ; 
 int /*<<< orphan*/  TBPF_NORMAL ; 
 int /*<<< orphan*/  g_taskbarList ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool FUNC4(void *data, int progress, bool finished)
{
   HWND hwnd = FUNC2();
   dispserv_win32_t *serv = (dispserv_win32_t*)data;

   if (serv)
      serv->progress      = progress;

#ifdef HAS_TASKBAR_EXT
   if (!g_taskbarList || !win32_taskbar_is_created())
      return false;

   if (progress == -1)
   {
      if (ITaskbarList3_SetProgressState(
            g_taskbarList, hwnd, TBPF_INDETERMINATE) != S_OK)
         return false;
   }
   else if (finished)
   {
      if (ITaskbarList3_SetProgressState(
            g_taskbarList, hwnd, TBPF_NOPROGRESS) != S_OK)
         return false;
   }
   else if (progress >= 0)
   {
      if (ITaskbarList3_SetProgressState(
            g_taskbarList, hwnd, TBPF_NORMAL) != S_OK)
         return false;

      if (ITaskbarList3_SetProgressValue(
            g_taskbarList, hwnd, progress, 100) != S_OK)
         return false;
   }
#endif

   return true;
}