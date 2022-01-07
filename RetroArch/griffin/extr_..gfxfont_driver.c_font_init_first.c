
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum font_driver_render_api { ____Placeholder_font_driver_render_api } font_driver_render_api ;
 int caca_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int ctr_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int d3d10_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int d3d11_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int d3d12_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int d3d8_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int d3d9_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int gdi_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int gl1_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int gl_core_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int gl_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int metal_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int ps2_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int sixel_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int switch_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int vga_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int vita2d_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int vulkan_font_init_first (void const**,void**,void*,char const*,float,int) ;
 int wiiu_font_init_first (void const**,void**,void*,char const*,float,int) ;

__attribute__((used)) static bool font_init_first(
      const void **font_driver, void **font_handle,
      void *video_data, const char *font_path, float font_size,
      enum font_driver_render_api api, bool is_threaded)
{
   if (font_path && !font_path[0])
      font_path = ((void*)0);

   switch (api)
   {
      case 140:

         break;
      default:
         break;
   }

   return 0;
}
