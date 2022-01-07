
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int path; } ;
typedef int playlist_t ;
struct TYPE_3__ {scalar_t__ rpl_entry_selection_ptr; int deferred_path; } ;
typedef TYPE_1__ menu_handle_t ;


 int RARCH_CTL_IS_DUMMY_CORE ;
 int RARCH_PATH_CONTENT ;
 int path_get (int ) ;
 int playlist_get_index (int *,scalar_t__,struct playlist_entry const**) ;
 scalar_t__ playlist_size (int *) ;
 int rarch_ctl (int ,int *) ;
 int string_is_equal (int ,int ) ;

__attribute__((used)) static bool history_needs_navigation_clear(menu_handle_t *menu, playlist_t *playlist)
{
   if (!menu)
      return 0;



   if (!rarch_ctl(RARCH_CTL_IS_DUMMY_CORE, ((void*)0)))
      return string_is_equal(menu->deferred_path, path_get(RARCH_PATH_CONTENT));



   if (!playlist)
      return 0;

   if (menu->rpl_entry_selection_ptr < playlist_size(playlist))
   {
      const struct playlist_entry *entry = ((void*)0);

      playlist_get_index(playlist, menu->rpl_entry_selection_ptr, &entry);
      return !string_is_equal(menu->deferred_path, entry->path);
   }

   return 0;
}
