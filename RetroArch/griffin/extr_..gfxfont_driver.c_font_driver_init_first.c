
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int font_renderer_t ;
struct TYPE_3__ {float size; void* renderer_data; int const* renderer; } ;
typedef TYPE_1__ font_data_t ;
typedef enum font_driver_render_api { ____Placeholder_font_driver_render_api } font_driver_render_api ;


 scalar_t__ calloc (int,int) ;
 int font_init_first (void const**,void**,void*,char const*,float,int,int) ;
 int video_driver_is_hw_context () ;
 int video_thread_font_init (void const**,void**,void*,char const*,float,int,int (*) (void const**,void**,void*,char const*,float,int,int),int) ;

font_data_t *font_driver_init_first(
      void *video_data, const char *font_path, float font_size,
      bool threading_hint, bool is_threaded,
      enum font_driver_render_api api)
{
   const void *font_driver = ((void*)0);
   void *font_handle = ((void*)0);
   bool ok = 0;
   ok = font_init_first(&font_driver, &font_handle,
         video_data, font_path, font_size, api, is_threaded);

   if (ok)
   {
      font_data_t *font = (font_data_t*)calloc(1, sizeof(*font));
      font->renderer = (const font_renderer_t*)font_driver;
      font->renderer_data = font_handle;
      font->size = font_size;
      return font;
   }

   return ((void*)0);
}
