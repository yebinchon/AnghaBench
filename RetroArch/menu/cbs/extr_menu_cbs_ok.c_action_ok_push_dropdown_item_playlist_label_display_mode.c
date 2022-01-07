
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;
typedef enum playlist_label_display_mode { ____Placeholder_playlist_label_display_mode } playlist_label_display_mode ;


 int action_cancel_pop_default (int *,int *,int ,int ) ;
 int * playlist_get_cached () ;
 int playlist_set_label_display_mode (int *,int) ;
 int playlist_write_file (int *) ;

__attribute__((used)) static int action_ok_push_dropdown_item_playlist_label_display_mode(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   playlist_t *playlist = playlist_get_cached();

   playlist_set_label_display_mode(playlist, (enum playlist_label_display_mode)idx);


   playlist_write_file(playlist);

   return action_cancel_pop_default(((void*)0), ((void*)0), 0, 0);
}
