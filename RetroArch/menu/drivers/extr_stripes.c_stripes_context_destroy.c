
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * list; } ;
struct TYPE_6__ {int * font2; int * font; int savestate_thumbnail; int left_thumbnail; int thumbnail; TYPE_1__ textures; } ;
typedef TYPE_2__ stripes_handle_t ;


 unsigned int STRIPES_TEXTURE_LAST ;
 int menu_display_font_free (int *) ;
 int stripes_context_bg_destroy (TYPE_2__*) ;
 int stripes_context_destroy_horizontal_list (TYPE_2__*) ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static void stripes_context_destroy(void *data)
{
   unsigned i;
   stripes_handle_t *stripes = (stripes_handle_t*)data;

   if (!stripes)
      return;

   for (i = 0; i < STRIPES_TEXTURE_LAST; i++)
      video_driver_texture_unload(&stripes->textures.list[i]);

   video_driver_texture_unload(&stripes->thumbnail);
   video_driver_texture_unload(&stripes->left_thumbnail);
   video_driver_texture_unload(&stripes->savestate_thumbnail);

   stripes_context_destroy_horizontal_list(stripes);
   stripes_context_bg_destroy(stripes);

   menu_display_font_free(stripes->font);
   menu_display_font_free(stripes->font2);

   stripes->font = ((void*)0);
   stripes->font2 = ((void*)0);
}
