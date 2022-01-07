
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {float alpha; float label_alpha; int x; float y; int zoom; } ;
typedef TYPE_1__ stripes_node_t ;
struct TYPE_12__ {int icon_size; float margins_screen_top; float items_passive_alpha; float items_active_alpha; int old_depth; int depth; scalar_t__ categories_selection_ptr; int categories_active_zoom; int categories_passive_zoom; } ;
typedef TYPE_2__ stripes_handle_t ;
struct TYPE_13__ {float target_value; float* subject; uintptr_t tag; int * cb; int easing_enum; int duration; } ;
typedef TYPE_3__ menu_animation_ctx_entry_t ;
typedef int file_list_t ;


 int EASING_OUT_QUAD ;
 int MENU_ENTRIES_CTL_SET_START ;
 int STRIPES_DELAY ;
 unsigned int STRIPES_SYSTEM_TAB_SETTINGS ;
 size_t file_list_get_size (int *) ;
 scalar_t__ file_list_get_userdata_at_offset (int *,unsigned int) ;
 int menu_animation_push (TYPE_3__*) ;
 int menu_entries_ctl (int ,size_t*) ;
 unsigned int stripes_get_system_tab (TYPE_2__*,unsigned int) ;
 float stripes_item_y (TYPE_2__*,unsigned int,size_t) ;
 int stripes_reset_thumbnail_content (TYPE_2__*) ;
 int stripes_update_thumbnail_image (TYPE_2__*) ;
 int stripes_update_thumbnail_path (TYPE_2__*,int ,char) ;
 int video_driver_get_size (int *,unsigned int*) ;

__attribute__((used)) static void stripes_list_open_new(stripes_handle_t *stripes,
      file_list_t *list, int dir, size_t current)
{
   unsigned i, height;
   unsigned stripes_system_tab = 0;
   size_t skip = 0;
   int threshold = stripes->icon_size * 10;
   size_t end = file_list_get_size(list);

   video_driver_get_size(((void*)0), &height);

   for (i = 0; i < end; i++)
   {
      float ia;
      float real_y;
      stripes_node_t *node = (stripes_node_t*)
         file_list_get_userdata_at_offset(list, i);

      if (!node)
         continue;

      if (dir == 1 || (dir == -1 && i != current))
         node->alpha = 0;

      if (dir == 1 || dir == -1)
         node->label_alpha = 0;

      node->x = stripes->icon_size * dir * 2;
      node->y = stripes_item_y(stripes, i, current);
      node->zoom = stripes->categories_passive_zoom;

      real_y = node->y + stripes->margins_screen_top;

      if (i == current)
         node->zoom = stripes->categories_active_zoom;

      ia = stripes->items_passive_alpha;
      if (i == current)
         ia = stripes->items_active_alpha;

      if (real_y < -threshold || real_y > height+threshold)
      {
         node->alpha = node->label_alpha = ia;
         node->x = 0;
      }
      else
      {
         menu_animation_ctx_entry_t anim_entry;

         anim_entry.duration = STRIPES_DELAY;
         anim_entry.target_value = ia;
         anim_entry.subject = &node->alpha;
         anim_entry.easing_enum = EASING_OUT_QUAD;
         anim_entry.tag = (uintptr_t)list;
         anim_entry.cb = ((void*)0);

         menu_animation_push(&anim_entry);

         anim_entry.subject = &node->label_alpha;

         menu_animation_push(&anim_entry);

         anim_entry.target_value = 0;
         anim_entry.subject = &node->x;

         menu_animation_push(&anim_entry);
      }
   }

   stripes->old_depth = stripes->depth;
   menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &skip);

   stripes_system_tab = stripes_get_system_tab(stripes,
         (unsigned)stripes->categories_selection_ptr);

   if (stripes_system_tab <= STRIPES_SYSTEM_TAB_SETTINGS)
   {
      if (stripes->depth < 4)
         stripes_reset_thumbnail_content(stripes);
      stripes_update_thumbnail_path(stripes, 0, 'R');
      stripes_update_thumbnail_image(stripes);
      stripes_update_thumbnail_path(stripes, 0, 'L');
      stripes_update_thumbnail_image(stripes);
   }
}
