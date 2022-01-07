
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int playlist_t ;
struct TYPE_4__ {int rpl_entry_selection_ptr; } ;
typedef TYPE_1__ menu_handle_t ;
struct TYPE_5__ {int * content_favorites; int * image_history; int * video_history; int * music_history; int * content_history; } ;


 TYPE_3__ g_defaults ;
 int menu_cbs_exit () ;
 TYPE_1__* menu_driver_get_ptr () ;
 int menu_entries_pop_stack (size_t*,int ,int) ;
 size_t menu_navigation_get_selection () ;
 int menu_navigation_set_selection (size_t) ;
 int playlist_delete_index (int *,int ) ;
 int * playlist_get_cached () ;
 char* playlist_get_conf_path (int *) ;
 int playlist_write_file (int *) ;
 scalar_t__ string_is_equal (char*,char*) ;

__attribute__((used)) static int action_ok_delete_entry(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   size_t new_selection_ptr;
   char *conf_path = ((void*)0);
   char *def_conf_path = ((void*)0);
   char *def_conf_music_path = ((void*)0);






   char *def_conf_fav_path = ((void*)0);
   playlist_t *playlist = playlist_get_cached();
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   conf_path = playlist_get_conf_path(playlist);
   def_conf_path = playlist_get_conf_path(g_defaults.content_history);
   def_conf_music_path = playlist_get_conf_path(g_defaults.music_history);






   def_conf_fav_path = playlist_get_conf_path(g_defaults.content_favorites);

   if (string_is_equal(conf_path, def_conf_path))
      playlist = g_defaults.content_history;
   else if (string_is_equal(conf_path, def_conf_music_path))
      playlist = g_defaults.music_history;
   else if (string_is_equal(conf_path, def_conf_fav_path))
      playlist = g_defaults.content_favorites;

   if (playlist)
   {
      playlist_delete_index(playlist, menu->rpl_entry_selection_ptr);
      playlist_write_file(playlist);
   }

   new_selection_ptr = menu_navigation_get_selection();
   menu_entries_pop_stack(&new_selection_ptr, 0, 1);
   menu_navigation_set_selection(new_selection_ptr);

   return 0;
}
