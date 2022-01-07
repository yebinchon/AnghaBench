
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;
typedef int menu_handle_t ;
typedef int menu_displaylist_info_t ;


 int menu_displaylist_parse_playlist (int *,int *,char const*,int) ;
 int menu_displaylist_set_new_playlist (int *,char const*) ;
 int * playlist_get_cached () ;
 int playlist_qsort (int *) ;

__attribute__((used)) static void menu_displaylist_parse_playlist_generic(
      menu_handle_t *menu,
      menu_displaylist_info_t *info,
      const char *playlist_name,
      const char *playlist_path,
      bool is_collection,
      bool sort,
      int *ret)
{
   playlist_t *playlist = ((void*)0);

   menu_displaylist_set_new_playlist(menu, playlist_path);

   playlist = playlist_get_cached();

   if (!playlist)
      return;

   if (sort)
      playlist_qsort(playlist);

   *ret = menu_displaylist_parse_playlist(info,
         playlist, playlist_name, is_collection);
}
