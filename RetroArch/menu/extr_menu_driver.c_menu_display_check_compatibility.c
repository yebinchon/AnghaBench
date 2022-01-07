
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum menu_display_driver_type { ____Placeholder_menu_display_driver_type } menu_display_driver_type ;
 int string_is_equal (char const*,char*) ;
 char* video_driver_get_ident () ;

__attribute__((used)) static bool menu_display_check_compatibility(
      enum menu_display_driver_type type,
      bool video_is_threaded)
{
   const char *video_driver = video_driver_get_ident();

   switch (type)
   {
      case 138:
         return 1;
      case 136:
         if (string_is_equal(video_driver, "gl"))
            return 1;
         break;
      case 135:
         if (string_is_equal(video_driver, "gl1"))
            return 1;
         break;
      case 134:
         if (string_is_equal(video_driver, "glcore"))
            return 1;
         break;
      case 129:
         if (string_is_equal(video_driver, "vulkan"))
            return 1;
         break;
      case 137:
         if (string_is_equal(video_driver, "metal"))
            return 1;
         break;
      case 142:
         if (string_is_equal(video_driver, "d3d8"))
            return 1;
         break;
      case 141:
         if (string_is_equal(video_driver, "d3d9"))
            return 1;
         break;
      case 145:
         if (string_is_equal(video_driver, "d3d10"))
            return 1;
         break;
      case 144:
         if (string_is_equal(video_driver, "d3d11"))
            return 1;
         break;
      case 143:
         if (string_is_equal(video_driver, "d3d12"))
            return 1;
         break;
      case 130:
         if (string_is_equal(video_driver, "vita2d"))
            return 1;
         break;
      case 146:
         if (string_is_equal(video_driver, "ctr"))
            return 1;
         break;
      case 128:
         if (string_is_equal(video_driver, "gx2"))
            return 1;
         break;
      case 133:
         if (string_is_equal(video_driver, "sixel"))
            return 1;
         break;
      case 147:
         if (string_is_equal(video_driver, "caca"))
            return 1;
         break;
      case 139:
         if (string_is_equal(video_driver, "gdi"))
            return 1;
         break;
      case 131:
         if (string_is_equal(video_driver, "vga"))
            return 1;
         break;
      case 140:
         if (string_is_equal(video_driver, "fpga"))
            return 1;
         break;
      case 132:
         if (string_is_equal(video_driver, "switch"))
            return 1;
         break;
   }

   return 0;
}
