
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ categories_selection_ptr; scalar_t__ categories_selection_ptr_old; int categories_active_idx; float icon_spacing_horizontal; unsigned int categories_active_idx_old; int thumbnail_path_data; scalar_t__ is_playlist; int selection_ptr_old; int selection_buf_old; int categories_x_pos; } ;
typedef TYPE_2__ xmb_handle_t ;
struct TYPE_15__ {scalar_t__ menu_horizontal_animation; } ;
struct TYPE_17__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_18__ {float target_value; int tag; int * subject; int * cb; int easing_enum; int duration; } ;
typedef TYPE_4__ menu_animation_ctx_entry_t ;
typedef int file_list_t ;


 int EASING_OUT_QUAD ;
 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 int XMB_DELAY ;
 TYPE_3__* config_get_ptr () ;
 int menu_animation_push (TYPE_4__*) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 scalar_t__ menu_thumbnail_is_enabled (int ,int ) ;
 int xmb_list_switch_horizontal_list (TYPE_2__*) ;
 int xmb_list_switch_new (TYPE_2__*,int *,int,size_t) ;
 int xmb_list_switch_old (TYPE_2__*,int ,int,int ) ;
 int xmb_set_thumbnail_content (TYPE_2__*,int *) ;
 int xmb_unload_thumbnail_textures (TYPE_2__*) ;
 int xmb_update_thumbnail_image (TYPE_2__*) ;
 int xmb_update_thumbnail_path (TYPE_2__*,int ,char) ;

__attribute__((used)) static void xmb_list_switch(xmb_handle_t *xmb)
{
   menu_animation_ctx_entry_t anim_entry;
   int dir = -1;
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();
   settings_t *settings = config_get_ptr();

   if (xmb->categories_selection_ptr > xmb->categories_selection_ptr_old)
      dir = 1;

   xmb->categories_active_idx += dir;

   xmb_list_switch_horizontal_list(xmb);

   anim_entry.duration = XMB_DELAY;
   anim_entry.target_value = xmb->icon_spacing_horizontal
      * -(float)xmb->categories_selection_ptr;
   anim_entry.subject = &xmb->categories_x_pos;
   anim_entry.easing_enum = EASING_OUT_QUAD;

   anim_entry.tag = -1;
   anim_entry.cb = ((void*)0);

   if (anim_entry.subject)
      menu_animation_push(&anim_entry);

   dir = -1;
   if (xmb->categories_selection_ptr > xmb->categories_selection_ptr_old)
      dir = 1;

   xmb_list_switch_old(xmb, xmb->selection_buf_old,
         dir, xmb->selection_ptr_old);


   if (settings->bools.menu_horizontal_animation)
      xmb_list_switch_new(xmb, selection_buf, dir, selection);
   xmb->categories_active_idx_old = (unsigned)xmb->categories_selection_ptr;

   if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT) ||
       menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
   {
      xmb_unload_thumbnail_textures(xmb);

      if (xmb->is_playlist)
      {
         xmb_set_thumbnail_content(xmb, ((void*)0));

         if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT))
            xmb_update_thumbnail_path(xmb, 0 , 'R');

         if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
            xmb_update_thumbnail_path(xmb, 0 , 'L');

         xmb_update_thumbnail_image(xmb);
      }
   }
}
