
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * list; } ;
struct TYPE_6__ {int * font2; int * font; int savestate_thumbnail; int left_thumbnail; int thumbnail; TYPE_1__ textures; } ;
typedef TYPE_2__ xmb_handle_t ;


 unsigned int XMB_TEXTURE_LAST ;
 int menu_display_font_free (int *) ;
 int video_driver_texture_unload (int *) ;
 int xmb_context_bg_destroy (TYPE_2__*) ;
 int xmb_context_destroy_horizontal_list (TYPE_2__*) ;

__attribute__((used)) static void xmb_context_destroy(void *data)
{
   unsigned i;
   xmb_handle_t *xmb = (xmb_handle_t*)data;

   if (!xmb)
      return;

   for (i = 0; i < XMB_TEXTURE_LAST; i++)
      video_driver_texture_unload(&xmb->textures.list[i]);

   video_driver_texture_unload(&xmb->thumbnail);
   video_driver_texture_unload(&xmb->left_thumbnail);
   video_driver_texture_unload(&xmb->savestate_thumbnail);

   xmb_context_destroy_horizontal_list(xmb);
   xmb_context_bg_destroy(xmb);

   menu_display_font_free(xmb->font);
   menu_display_font_free(xmb->font2);

   xmb->font = ((void*)0);
   xmb->font2 = ((void*)0);
}
