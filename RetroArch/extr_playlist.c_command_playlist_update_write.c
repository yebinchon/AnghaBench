
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {int dummy; } ;
typedef int playlist_t ;


 int * playlist_get_cached () ;
 int playlist_update (int *,size_t,struct playlist_entry const*) ;
 int playlist_write_file (int *) ;

void command_playlist_update_write(
      playlist_t *plist,
      size_t idx,
      const struct playlist_entry *entry)
{
   playlist_t *playlist = plist ? plist : playlist_get_cached();

   if (!playlist)
      return;

   playlist_update(
         playlist,
         idx,
         entry);

   playlist_write_file(playlist);
}
