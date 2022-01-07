
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int view; int staging; int handle; } ;
struct TYPE_7__ {TYPE_1__ texture; scalar_t__ font_data; TYPE_2__* font_driver; } ;
typedef TYPE_3__ d3d10_font_t ;
struct TYPE_6__ {int (* free ) (scalar_t__) ;} ;


 int Release (int ) ;
 int free (TYPE_3__*) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void d3d10_font_free_font(void* data, bool is_threaded)
{
   d3d10_font_t* font = (d3d10_font_t*)data;

   if (!font)
      return;

   if (font->font_driver && font->font_data && font->font_driver->free)
      font->font_driver->free(font->font_data);

   Release(font->texture.handle);
   Release(font->texture.staging);
   Release(font->texture.view);
   free(font);
}
