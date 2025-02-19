
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {float alpha; float label_alpha; float y; float zoom; } ;
typedef TYPE_2__ xmb_node_t ;
struct TYPE_23__ {int icon_size; float items_passive_alpha; float items_passive_zoom; float margins_screen_top; float items_active_alpha; float items_active_zoom; int thumbnail_path_data; scalar_t__ is_db_manager_list; scalar_t__ is_playlist; scalar_t__ categories_selection_ptr; } ;
typedef TYPE_3__ xmb_handle_t ;
struct TYPE_21__ {int menu_xmb_animation_move_up_down; } ;
struct TYPE_24__ {TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;
typedef int menu_list_t ;
struct TYPE_25__ {int path_enabled; int label_enabled; int rich_label_enabled; int value_enabled; int sublabel_enabled; } ;
typedef TYPE_5__ menu_entry_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_26__ {float target_value; float* subject; uintptr_t tag; int duration; int easing_enum; int * cb; } ;
typedef TYPE_6__ menu_animation_ctx_entry_t ;
typedef int file_list_t ;


 int EASING_OUT_EXPO ;
 int EASING_OUT_QUAD ;
 unsigned int FILE_TYPE_IMAGE ;
 unsigned int FILE_TYPE_IMAGEVIEWER ;
 int MENU_ENTRIES_CTL_LIST_GET ;
 int MENU_ENTRIES_CTL_SET_START ;
 int MENU_LIST_PLAIN ;
 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 int XMB_DELAY ;
 unsigned int XMB_SYSTEM_TAB_SETTINGS ;
 TYPE_4__* config_get_ptr () ;
 scalar_t__ file_list_get_userdata_at_offset (int *,unsigned int) ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int menu_animation_push (TYPE_6__*) ;
 int menu_entries_ctl (int ,size_t*) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 scalar_t__ menu_entries_get_size () ;
 int menu_entry_get (TYPE_5__*,int ,size_t,int *,int) ;
 unsigned int menu_entry_get_type_new (TYPE_5__*) ;
 int menu_entry_init (TYPE_5__*) ;
 size_t menu_navigation_get_selection () ;
 scalar_t__ menu_thumbnail_is_enabled (int ,int ) ;
 int video_driver_get_size (int *,unsigned int*) ;
 unsigned int xmb_get_system_tab (TYPE_3__*,unsigned int) ;
 float xmb_item_y (TYPE_3__*,unsigned int,size_t) ;
 scalar_t__ xmb_list_get_size (TYPE_3__*,int ) ;
 int xmb_set_thumbnail_content (TYPE_3__*,char*) ;
 int xmb_update_savestate_thumbnail_image (TYPE_3__*) ;
 int xmb_update_savestate_thumbnail_path (TYPE_3__*,unsigned int) ;
 int xmb_update_thumbnail_image (TYPE_3__*) ;
 int xmb_update_thumbnail_path (TYPE_3__*,unsigned int,char) ;

__attribute__((used)) static void xmb_selection_pointer_changed(
      xmb_handle_t *xmb, bool allow_animations)
{
   unsigned i, end, height;
   menu_animation_ctx_tag tag;
   menu_entry_t entry;
   size_t num = 0;
   int threshold = 0;
   menu_list_t *menu_list = ((void*)0);
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();

   if (!xmb)
      return;

   menu_entries_ctl(MENU_ENTRIES_CTL_LIST_GET, &menu_list);

   menu_entry_init(&entry);
   entry.path_enabled = 0;
   entry.label_enabled = 0;
   entry.rich_label_enabled = 0;
   entry.value_enabled = 0;
   entry.sublabel_enabled = 0;
   menu_entry_get(&entry, 0, selection, ((void*)0), 1);

   end = (unsigned)menu_entries_get_size();
   threshold = xmb->icon_size * 10;

   video_driver_get_size(((void*)0), &height);

   tag = (uintptr_t)selection_buf;

   menu_animation_kill_by_tag(&tag);
   menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &num);

   for (i = 0; i < end; i++)
   {
      float iy, real_iy;
      float ia = xmb->items_passive_alpha;
      float iz = xmb->items_passive_zoom;
      xmb_node_t *node = (xmb_node_t*)
         file_list_get_userdata_at_offset(selection_buf, i);

      if (!node)
         continue;

      iy = xmb_item_y(xmb, i, selection);
      real_iy = iy + xmb->margins_screen_top;

      if (i == selection)
      {
         unsigned depth = (unsigned)xmb_list_get_size(xmb, MENU_LIST_PLAIN);
         unsigned xmb_system_tab = xmb_get_system_tab(xmb, (unsigned)xmb->categories_selection_ptr);
         unsigned entry_type = menu_entry_get_type_new(&entry);

         ia = xmb->items_active_alpha;
         iz = xmb->items_active_zoom;
         if (
               menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT) ||
               menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT)
            )
         {
            bool update_thumbnails = 0;


            if (((xmb_system_tab > XMB_SYSTEM_TAB_SETTINGS && depth == 1) ||
                 (xmb_system_tab < XMB_SYSTEM_TAB_SETTINGS && depth == 4)) &&
                xmb->is_playlist)
            {
               xmb_set_thumbnail_content(xmb, ((void*)0));
               update_thumbnails = 1;
            }


            else if (depth == 4 && xmb->is_db_manager_list)
            {
               xmb_set_thumbnail_content(xmb, ((void*)0));
               update_thumbnails = 1;
            }

            else if (
                  entry_type == FILE_TYPE_IMAGEVIEWER ||
                  entry_type == FILE_TYPE_IMAGE)
            {
               xmb_set_thumbnail_content(xmb, "imageviewer");
               update_thumbnails = 1;
            }

            if (update_thumbnails)
            {
               if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT))
                  xmb_update_thumbnail_path(xmb, i , 'R');

               if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
                  xmb_update_thumbnail_path(xmb, i , 'L');

               xmb_update_thumbnail_image(xmb);
            }
         }

         xmb_update_savestate_thumbnail_path(xmb, i);
         xmb_update_savestate_thumbnail_image(xmb);
      }

      if ( (!allow_animations)
            || (real_iy < -threshold
               || real_iy > height+threshold))
      {
         node->alpha = node->label_alpha = ia;
         node->y = iy;
         node->zoom = iz;
      }
      else
      {
         settings_t *settings = config_get_ptr();


         menu_animation_ctx_entry_t anim_entry;

         anim_entry.target_value = ia;
         anim_entry.subject = &node->alpha;
         anim_entry.tag = tag;
         anim_entry.cb = ((void*)0);

         switch (settings->uints.menu_xmb_animation_move_up_down)
         {
            case 0:
               anim_entry.duration = XMB_DELAY;
               anim_entry.easing_enum = EASING_OUT_QUAD;
               break;
            case 1:
               anim_entry.duration = XMB_DELAY * 4;
               anim_entry.easing_enum = EASING_OUT_EXPO;
               break;
         }

         menu_animation_push(&anim_entry);

         anim_entry.subject = &node->label_alpha;

         menu_animation_push(&anim_entry);

         anim_entry.target_value = iz;
         anim_entry.subject = &node->zoom;

         menu_animation_push(&anim_entry);

         anim_entry.target_value = iy;
         anim_entry.subject = &node->y;

         menu_animation_push(&anim_entry);
      }
   }
}
