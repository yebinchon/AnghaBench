
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ categories_selection_ptr; scalar_t__ categories_selection_ptr_old; int categories_active_idx; float categories_passive_width; unsigned int categories_active_idx_old; int selection_ptr_old; int selection_buf_old; int categories_x_pos; } ;
typedef TYPE_2__ stripes_handle_t ;
struct TYPE_17__ {scalar_t__ menu_horizontal_animation; } ;
struct TYPE_19__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_20__ {int path; } ;
typedef TYPE_4__ menu_entry_t ;
struct TYPE_21__ {float target_value; int tag; int * subject; int * cb; int easing_enum; int duration; } ;
typedef TYPE_5__ menu_animation_ctx_entry_t ;
typedef int file_list_t ;


 int EASING_OUT_QUAD ;
 int MENU_ENUM_LABEL_VALUE_OFF ;
 int STRIPES_DELAY ;
 TYPE_3__* config_get_ptr () ;
 int menu_animation_push (TYPE_5__*) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 int menu_entry_get (TYPE_4__*,int ,size_t,int *,int) ;
 int menu_entry_init (TYPE_4__*) ;
 size_t menu_navigation_get_selection () ;
 int msg_hash_to_str (int ) ;
 int string_is_empty (int ) ;
 int string_is_equal (int ,int ) ;
 int stripes_list_switch_horizontal_list (TYPE_2__*) ;
 int stripes_list_switch_new (TYPE_2__*,int *,int,size_t) ;
 int stripes_list_switch_old (TYPE_2__*,int ,int,int ) ;
 int stripes_set_thumbnail_content (TYPE_2__*,int ,int ) ;
 int stripes_thumbnails_ident (char) ;
 int stripes_update_thumbnail_image (TYPE_2__*) ;
 int stripes_update_thumbnail_path (TYPE_2__*,int ,char) ;

__attribute__((used)) static void stripes_list_switch(stripes_handle_t *stripes)
{
   menu_animation_ctx_entry_t anim_entry;
   int dir = -1;
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();
   settings_t *settings = config_get_ptr();

   if (stripes->categories_selection_ptr > stripes->categories_selection_ptr_old)
      dir = 1;

   stripes->categories_active_idx += dir;

   stripes_list_switch_horizontal_list(stripes);

   anim_entry.duration = STRIPES_DELAY;
   anim_entry.target_value = stripes->categories_passive_width
      * -(float)stripes->categories_selection_ptr;
   anim_entry.subject = &stripes->categories_x_pos;
   anim_entry.easing_enum = EASING_OUT_QUAD;

   anim_entry.tag = -1;
   anim_entry.cb = ((void*)0);

   if (anim_entry.subject)
      menu_animation_push(&anim_entry);

   dir = -1;
   if (stripes->categories_selection_ptr > stripes->categories_selection_ptr_old)
      dir = 1;

   stripes_list_switch_old(stripes, stripes->selection_buf_old,
         dir, stripes->selection_ptr_old);


   if (settings->bools.menu_horizontal_animation)
      stripes_list_switch_new(stripes, selection_buf, dir, selection);
   stripes->categories_active_idx_old = (unsigned)stripes->categories_selection_ptr;

   if (!string_is_equal(stripes_thumbnails_ident('R'),
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF)))
   {
      menu_entry_t entry;

      menu_entry_init(&entry);
      menu_entry_get(&entry, 0, selection, ((void*)0), 1);

      if (!string_is_empty(entry.path))
         stripes_set_thumbnail_content(stripes, entry.path, 0 );

      stripes_update_thumbnail_path(stripes, 0, 'R');
      stripes_update_thumbnail_image(stripes);
   }
   if (!string_is_equal(stripes_thumbnails_ident('L'),
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF)))
   {
      menu_entry_t entry;

      menu_entry_init(&entry);
      menu_entry_get(&entry, 0, selection, ((void*)0), 1);

      if (!string_is_empty(entry.path))
         stripes_set_thumbnail_content(stripes, entry.path, 0 );

      stripes_update_thumbnail_path(stripes, 0, 'L');
      stripes_update_thumbnail_image(stripes);
   }
}
