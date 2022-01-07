
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float alpha; float label_alpha; float y; float zoom; } ;
typedef TYPE_1__ stripes_node_t ;
struct TYPE_8__ {int icon_size; float items_passive_alpha; float items_passive_zoom; float margins_screen_top; } ;
typedef TYPE_2__ stripes_handle_t ;
typedef int menu_list_t ;
typedef int menu_entry_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_9__ {float target_value; float* subject; uintptr_t tag; int * cb; int easing_enum; int duration; } ;
typedef TYPE_3__ menu_animation_ctx_entry_t ;
typedef int file_list_t ;


 int EASING_OUT_QUAD ;
 int MENU_ENTRIES_CTL_LIST_GET ;
 int MENU_ENTRIES_CTL_SET_START ;
 int STRIPES_DELAY ;
 scalar_t__ file_list_get_userdata_at_offset (int *,unsigned int) ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int menu_animation_push (TYPE_3__*) ;
 int menu_entries_ctl (int ,size_t*) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 scalar_t__ menu_entries_get_size () ;
 int menu_entry_get (int *,int ,size_t,int *,int) ;
 int menu_entry_init (int *) ;
 size_t menu_navigation_get_selection () ;
 float stripes_item_y (TYPE_2__*,unsigned int,size_t) ;
 char* stripes_thumbnails_ident (char) ;
 int video_driver_get_size (int *,unsigned int*) ;

__attribute__((used)) static void stripes_selection_pointer_changed(
      stripes_handle_t *stripes, bool allow_animations)
{
   unsigned i, end, height;
   menu_animation_ctx_tag tag;
   menu_entry_t entry;
   size_t num = 0;
   int threshold = 0;
   menu_list_t *menu_list = ((void*)0);
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();
   const char *thumb_ident = stripes_thumbnails_ident('R');
   const char *lft_thumb_ident= stripes_thumbnails_ident('L');

   menu_entries_ctl(MENU_ENTRIES_CTL_LIST_GET, &menu_list);
   menu_entry_init(&entry);

   if (!stripes)
      return;

   menu_entry_get(&entry, 0, selection, ((void*)0), 1);

   end = (unsigned)menu_entries_get_size();
   threshold = stripes->icon_size * 10;

   video_driver_get_size(((void*)0), &height);

   tag = (uintptr_t)selection_buf;

   menu_animation_kill_by_tag(&tag);
   menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &num);

   for (i = 0; i < end; i++)
   {
      float iy, real_iy;
      float ia = stripes->items_passive_alpha;
      float iz = stripes->items_passive_zoom;
      stripes_node_t *node = (stripes_node_t*)
         file_list_get_userdata_at_offset(selection_buf, i);

      if (!node)
         continue;

      iy = stripes_item_y(stripes, i, selection);
      real_iy = iy + stripes->margins_screen_top;

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
         menu_animation_ctx_entry_t anim_entry;

         anim_entry.duration = STRIPES_DELAY;
         anim_entry.target_value = ia;
         anim_entry.subject = &node->alpha;
         anim_entry.easing_enum = EASING_OUT_QUAD;
         anim_entry.tag = tag;
         anim_entry.cb = ((void*)0);

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
