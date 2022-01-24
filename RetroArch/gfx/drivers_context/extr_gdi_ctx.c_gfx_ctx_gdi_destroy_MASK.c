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
typedef  int /*<<< orphan*/  gfx_ctx_gdi_data_t ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int g_win32_inited ; 
 int g_win32_restore_desktop ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * win32_gdi_hdc ; 
 scalar_t__ win32_gdi_major ; 
 scalar_t__ win32_gdi_minor ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data)
{
   gfx_ctx_gdi_data_t *gdi = (gfx_ctx_gdi_data_t*)data;
   HWND     window         = FUNC3();

   if (window && win32_gdi_hdc)
   {
      FUNC0(window, win32_gdi_hdc);
      win32_gdi_hdc = NULL;
   }

   if (window)
   {
      FUNC4();
      FUNC2();
   }

   if (g_win32_restore_desktop)
   {
      FUNC5();
      g_win32_restore_desktop     = false;
   }

   if (gdi)
      FUNC1(gdi);

   g_win32_inited                   = false;
   win32_gdi_major                  = 0;
   win32_gdi_minor                  = 0;
}