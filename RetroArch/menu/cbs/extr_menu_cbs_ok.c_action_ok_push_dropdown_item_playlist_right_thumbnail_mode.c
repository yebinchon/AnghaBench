
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;
typedef enum playlist_thumbnail_mode { ____Placeholder_playlist_thumbnail_mode } playlist_thumbnail_mode ;


 int PLAYLIST_THUMBNAIL_RIGHT ;
 int action_cancel_pop_default (int *,int *,int ,int ) ;
 int * playlist_get_cached () ;
 int playlist_set_thumbnail_mode (int *,int ,int) ;
 int playlist_write_file (int *) ;

__attribute__((used)) static int action_ok_push_dropdown_item_playlist_right_thumbnail_mode(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   playlist_t *playlist = playlist_get_cached();

   if (!playlist)
      return -1;

   playlist_set_thumbnail_mode(playlist, PLAYLIST_THUMBNAIL_RIGHT, (enum playlist_thumbnail_mode)idx);
   playlist_write_file(playlist);

   return action_cancel_pop_default(((void*)0), ((void*)0), 0, 0);
}
