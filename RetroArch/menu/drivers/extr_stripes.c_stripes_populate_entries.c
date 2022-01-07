
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ categories_selection_ptr; scalar_t__ categories_active_idx_old; } ;
typedef TYPE_1__ stripes_handle_t ;


 int MENU_ENUM_LABEL_VALUE_OFF ;
 int RARCH_MENU_CTL_IS_PREVENT_POPULATE ;
 int RARCH_MENU_CTL_UNSET_PREVENT_POPULATE ;
 scalar_t__ menu_driver_ctl (int ,int *) ;
 int msg_hash_to_str (int ) ;
 int string_is_equal (int ,int ) ;
 int stripes_list_open (TYPE_1__*) ;
 int stripes_list_switch (TYPE_1__*) ;
 int stripes_selection_pointer_changed (TYPE_1__*,int) ;
 int stripes_set_title (TYPE_1__*) ;
 int stripes_thumbnails_ident (char) ;
 int stripes_update_savestate_thumbnail_image (TYPE_1__*) ;
 int stripes_update_thumbnail_image (TYPE_1__*) ;

__attribute__((used)) static void stripes_populate_entries(void *data,
      const char *path,
      const char *label, unsigned k)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;

   if (!stripes)
      return;

   if (menu_driver_ctl(RARCH_MENU_CTL_IS_PREVENT_POPULATE, ((void*)0)))
   {
      stripes_selection_pointer_changed(stripes, 0);
      menu_driver_ctl(RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, ((void*)0));
      if (!string_is_equal(stripes_thumbnails_ident('R'),
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF)))
         stripes_update_thumbnail_image(stripes);
      stripes_update_savestate_thumbnail_image(stripes);
      if (!string_is_equal(stripes_thumbnails_ident('L'),
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF)))
         stripes_update_thumbnail_image(stripes);
      return;
   }

   stripes_set_title(stripes);

   if (stripes->categories_selection_ptr != stripes->categories_active_idx_old)
      stripes_list_switch(stripes);
   else
      stripes_list_open(stripes);
}
