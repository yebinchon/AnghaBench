
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int tex; TYPE_2__* gl; scalar_t__ font_data; TYPE_3__* font_driver; } ;
typedef TYPE_4__ gl_core_raster_t ;
struct TYPE_8__ {int (* free ) (scalar_t__) ;} ;
struct TYPE_7__ {TYPE_1__* ctx_driver; } ;
struct TYPE_6__ {int (* make_current ) (int) ;} ;


 int free (TYPE_4__*) ;
 int glDeleteTextures (int,int *) ;
 int stub1 (scalar_t__) ;
 int stub2 (int) ;

__attribute__((used)) static void gl_core_raster_font_free_font(void *data,
      bool is_threaded)
{
   gl_core_raster_t *font = (gl_core_raster_t*)data;
   if (!font)
      return;

   if (font->font_driver && font->font_data)
      font->font_driver->free(font->font_data);

   if (is_threaded)
      if (
            font->gl &&
            font->gl->ctx_driver &&
            font->gl->ctx_driver->make_current)
         font->gl->ctx_driver->make_current(1);

   glDeleteTextures(1, &font->tex);

   free(font);
}
