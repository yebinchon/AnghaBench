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
typedef  enum menu_display_driver_type { ____Placeholder_menu_display_driver_type } menu_display_driver_type ;

/* Variables and functions */
#define  MENU_VIDEO_DRIVER_CACA 147 
#define  MENU_VIDEO_DRIVER_CTR 146 
#define  MENU_VIDEO_DRIVER_DIRECT3D10 145 
#define  MENU_VIDEO_DRIVER_DIRECT3D11 144 
#define  MENU_VIDEO_DRIVER_DIRECT3D12 143 
#define  MENU_VIDEO_DRIVER_DIRECT3D8 142 
#define  MENU_VIDEO_DRIVER_DIRECT3D9 141 
#define  MENU_VIDEO_DRIVER_FPGA 140 
#define  MENU_VIDEO_DRIVER_GDI 139 
#define  MENU_VIDEO_DRIVER_GENERIC 138 
#define  MENU_VIDEO_DRIVER_METAL 137 
#define  MENU_VIDEO_DRIVER_OPENGL 136 
#define  MENU_VIDEO_DRIVER_OPENGL1 135 
#define  MENU_VIDEO_DRIVER_OPENGL_CORE 134 
#define  MENU_VIDEO_DRIVER_SIXEL 133 
#define  MENU_VIDEO_DRIVER_SWITCH 132 
#define  MENU_VIDEO_DRIVER_VGA 131 
#define  MENU_VIDEO_DRIVER_VITA2D 130 
#define  MENU_VIDEO_DRIVER_VULKAN 129 
#define  MENU_VIDEO_DRIVER_WIIU 128 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 char* FUNC1 () ; 

__attribute__((used)) static bool FUNC2(
      enum menu_display_driver_type type,
      bool video_is_threaded)
{
   const char *video_driver = FUNC1();

   switch (type)
   {
      case MENU_VIDEO_DRIVER_GENERIC:
         return true;
      case MENU_VIDEO_DRIVER_OPENGL:
         if (FUNC0(video_driver, "gl"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_OPENGL1:
         if (FUNC0(video_driver, "gl1"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_OPENGL_CORE:
         if (FUNC0(video_driver, "glcore"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_VULKAN:
         if (FUNC0(video_driver, "vulkan"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_METAL:
         if (FUNC0(video_driver, "metal"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_DIRECT3D8:
         if (FUNC0(video_driver, "d3d8"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_DIRECT3D9:
         if (FUNC0(video_driver, "d3d9"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_DIRECT3D10:
         if (FUNC0(video_driver, "d3d10"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_DIRECT3D11:
         if (FUNC0(video_driver, "d3d11"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_DIRECT3D12:
         if (FUNC0(video_driver, "d3d12"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_VITA2D:
         if (FUNC0(video_driver, "vita2d"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_CTR:
         if (FUNC0(video_driver, "ctr"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_WIIU:
         if (FUNC0(video_driver, "gx2"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_SIXEL:
         if (FUNC0(video_driver, "sixel"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_CACA:
         if (FUNC0(video_driver, "caca"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_GDI:
         if (FUNC0(video_driver, "gdi"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_VGA:
         if (FUNC0(video_driver, "vga"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_FPGA:
         if (FUNC0(video_driver, "fpga"))
            return true;
         break;
      case MENU_VIDEO_DRIVER_SWITCH:
         if (FUNC0(video_driver, "switch"))
            return true;
         break;
   }

   return false;
}