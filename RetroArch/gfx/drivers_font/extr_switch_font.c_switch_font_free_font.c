
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ font_data; TYPE_1__* font_driver; } ;
typedef TYPE_2__ switch_font_t ;
struct TYPE_4__ {int (* free ) (scalar_t__) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void switch_font_free_font(void *data, bool is_threaded)
{
      switch_font_t *font = (switch_font_t *)data;

      if (!font)
            return;

      if (font->font_driver && font->font_data)
            font->font_driver->free(font->font_data);

      free(font);
}
