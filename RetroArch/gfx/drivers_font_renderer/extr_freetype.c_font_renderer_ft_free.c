
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* buffer; } ;
struct TYPE_5__ {scalar_t__ lib; scalar_t__ face; TYPE_1__ atlas; } ;
typedef TYPE_2__ ft_font_renderer_t ;


 int FT_Done_Face (scalar_t__) ;
 int FT_Done_FreeType (scalar_t__) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void font_renderer_ft_free(void *data)
{
   ft_font_renderer_t *handle = (ft_font_renderer_t*)data;
   if (!handle)
      return;

   free(handle->atlas.buffer);

   if (handle->face)
      FT_Done_Face(handle->face);
   if (handle->lib)
      FT_Done_FreeType(handle->lib);
   free(handle);
}
