
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {int dummy; } ;
typedef int playlist_t ;


 scalar_t__ playlist_push (int *,struct playlist_entry const*) ;
 int playlist_write_file (int *) ;

void command_playlist_push_write(
      playlist_t *playlist,
      const struct playlist_entry *entry)
{
   if (!playlist)
      return;

   if (playlist_push(
         playlist,
         entry
         ))
      playlist_write_file(playlist);
}
