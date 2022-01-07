
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argb32_to_abgr1555 ;
 int argb32_to_abgr4444 ;
 int argb32_to_bgra4444 ;
 int argb32_to_pixel_platform_format ;
 int argb32_to_rgb5a3 ;
 int argb32_to_rgba4444 ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 char* video_driver_get_ident () ;

__attribute__((used)) static void rgui_set_pixel_format_function(void)
{
   const char *driver_ident = video_driver_get_ident();


   if (string_is_empty(driver_ident))
   {
      argb32_to_pixel_platform_format = argb32_to_rgba4444;
      return;
   }

   if ( string_is_equal(driver_ident, "ps2"))
      argb32_to_pixel_platform_format = argb32_to_abgr1555;
   else if (string_is_equal(driver_ident, "gx"))
      argb32_to_pixel_platform_format = argb32_to_rgb5a3;
   else if (string_is_equal(driver_ident, "psp1"))
      argb32_to_pixel_platform_format = argb32_to_abgr4444;
   else if (string_is_equal(driver_ident, "d3d10") ||
            string_is_equal(driver_ident, "d3d11") ||
            string_is_equal(driver_ident, "d3d12"))
      argb32_to_pixel_platform_format = argb32_to_bgra4444;
   else
      argb32_to_pixel_platform_format = argb32_to_rgba4444;
}
