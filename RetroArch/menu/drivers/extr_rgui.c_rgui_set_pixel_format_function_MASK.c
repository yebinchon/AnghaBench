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

/* Variables and functions */
 int /*<<< orphan*/  argb32_to_abgr1555 ; 
 int /*<<< orphan*/  argb32_to_abgr4444 ; 
 int /*<<< orphan*/  argb32_to_bgra4444 ; 
 int /*<<< orphan*/  argb32_to_pixel_platform_format ; 
 int /*<<< orphan*/  argb32_to_rgb5a3 ; 
 int /*<<< orphan*/  argb32_to_rgba4444 ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
   const char *driver_ident = FUNC2();
   
   /* Default fallback... */
   if (FUNC0(driver_ident))
   {
      argb32_to_pixel_platform_format = argb32_to_rgba4444;
      return;
   }
   
   if (     FUNC1(driver_ident, "ps2"))     /* PS2 */
      argb32_to_pixel_platform_format = argb32_to_abgr1555;
   else if (FUNC1(driver_ident, "gx"))      /* GEKKO */
      argb32_to_pixel_platform_format = argb32_to_rgb5a3;
   else if (FUNC1(driver_ident, "psp1"))    /* PSP */
      argb32_to_pixel_platform_format = argb32_to_abgr4444;
   else if (FUNC1(driver_ident, "d3d10") || /* D3D10/11/12 */
            FUNC1(driver_ident, "d3d11") ||
            FUNC1(driver_ident, "d3d12"))
      argb32_to_pixel_platform_format = argb32_to_bgra4444;
   else
      argb32_to_pixel_platform_format = argb32_to_rgba4444;
}