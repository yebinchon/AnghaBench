
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int font_data_t ;
struct TYPE_2__ {int (* font_init_first ) (void**,int ,char*,float,int) ;} ;


 TYPE_1__* menu_disp ;
 int stub1 (void**,int ,char*,float,int) ;
 int video_driver_get_ptr (int) ;

font_data_t *menu_display_font_file(char* fontpath, float menu_font_size, bool is_threaded)
{
   font_data_t *font_data = ((void*)0);

   if (!menu_disp)
      return ((void*)0);

   if (!menu_disp->font_init_first((void**)&font_data,
            video_driver_get_ptr(0),
            fontpath, menu_font_size, is_threaded))
      return ((void*)0);

   return font_data;
}
