
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int texture; scalar_t__ font_data; TYPE_1__* font_driver; } ;
typedef TYPE_2__ vita_font_t ;
struct TYPE_4__ {int (* free ) (scalar_t__) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (scalar_t__) ;
 int vita2d_free_texture (int ) ;
 int vita2d_wait_rendering_done () ;

__attribute__((used)) static void vita2d_font_free_font(void *data, bool is_threaded)
{
   vita_font_t *font = (vita_font_t*)data;
   if (!font)
      return;

   if (font->font_driver && font->font_data)
      font->font_driver->free(font->font_data);




   vita2d_free_texture(font->texture);

   free(font);
}
