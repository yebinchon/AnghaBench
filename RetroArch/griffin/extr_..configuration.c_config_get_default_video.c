
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_driver_enum { ____Placeholder_video_driver_enum } video_driver_enum ;
 int VIDEO_DEFAULT_DRIVER ;
const char *config_get_default_video(void)
{
   enum video_driver_enum default_driver = VIDEO_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 147:
         return "gl";
      case 146:
         return "gl1";
      case 145:
         return "glcore";
      case 132:
         return "vulkan";
      case 144:
         return "metal";
      case 152:
         return "drm";
      case 131:
         return "gx";
      case 130:
         return "gx2";
      case 129:
         return "xenon360";
      case 155:
         return "d3d8";
      case 154:
         return "d3d9";
      case 158:
         return "d3d10";
      case 157:
         return "d3d11";
      case 156:
         return "d3d12";
      case 140:
         return "psp1";
      case 141:
         return "ps2";
      case 133:
         return "vita2d";
      case 159:
         return "ctr";
      case 136:
         return "switch";
      case 128:
         return "xvideo";
      case 139:
         return "sdl";
      case 138:
         return "sdl2";
      case 151:
         return "ext";
      case 135:
         return "vg";
      case 142:
         return "omap";
      case 150:
         return "exynos";
      case 153:
         return "dispmanx";
      case 137:
         return "sunxi";
      case 160:
         return "caca";
      case 148:
         return "gdi";
      case 134:
         return "vga";
      case 149:
         return "fpga";
      case 143:
         break;
   }

   return "null";
}
