
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int * font; } ;
struct TYPE_10__ {int * font; } ;
struct TYPE_9__ {int * font; } ;
struct TYPE_12__ {TYPE_4__ hint; TYPE_3__ list; TYPE_2__ title; } ;
struct TYPE_8__ {int * list; } ;
struct TYPE_13__ {TYPE_5__ font_data; TYPE_1__ textures; } ;
typedef TYPE_6__ materialui_handle_t ;


 unsigned int MUI_TEXTURE_LAST ;
 int materialui_context_bg_destroy (TYPE_6__*) ;
 int materialui_reset_thumbnails () ;
 int menu_display_font_free (int *) ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static void materialui_context_destroy(void *data)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;
   unsigned i;

   if (!mui)
      return;


   for (i = 0; i < MUI_TEXTURE_LAST; i++)
      video_driver_texture_unload(&mui->textures.list[i]);


   if (mui->font_data.title.font)
      menu_display_font_free(mui->font_data.title.font);
   mui->font_data.title.font = ((void*)0);

   if (mui->font_data.list.font)
      menu_display_font_free(mui->font_data.list.font);
   mui->font_data.list.font = ((void*)0);

   if (mui->font_data.hint.font)
      menu_display_font_free(mui->font_data.hint.font);
   mui->font_data.hint.font = ((void*)0);


   materialui_reset_thumbnails();


   materialui_context_bg_destroy(mui);
}
