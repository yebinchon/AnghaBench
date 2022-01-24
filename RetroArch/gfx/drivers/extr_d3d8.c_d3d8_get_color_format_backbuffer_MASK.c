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
struct TYPE_3__ {int /*<<< orphan*/  Format; } ;
typedef  int /*<<< orphan*/  D3DFORMAT ;
typedef  TYPE_1__ D3DDISPLAYMODE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFMT_X8R8G8B8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  g_pD3D8 ; 

__attribute__((used)) static D3DFORMAT FUNC2(bool rgb32, bool windowed)
{
   D3DFORMAT fmt = D3DFMT_X8R8G8B8;
#ifdef _XBOX
   if (!rgb32)
      fmt        = d3d8_get_rgb565_format();
#else
   if (windowed)
   {
      D3DDISPLAYMODE display_mode;
      if (FUNC0(g_pD3D8, 0, &display_mode))
         fmt = display_mode.Format;
   }
#endif
   return fmt;
}