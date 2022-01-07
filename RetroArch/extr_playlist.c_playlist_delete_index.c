
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int dummy; } ;
struct TYPE_3__ {size_t size; int modified; scalar_t__ entries; } ;
typedef TYPE_1__ playlist_t ;


 int memmove (scalar_t__,scalar_t__,size_t) ;
 int playlist_free_entry (struct playlist_entry*) ;

void playlist_delete_index(playlist_t *playlist,
      size_t idx)
{
   struct playlist_entry *entry_to_delete = ((void*)0);

   if (!playlist)
      return;

   if (idx >= playlist->size)
      return;

   playlist->size = playlist->size - 1;


   entry_to_delete = (struct playlist_entry *)(playlist->entries + idx);
   if (entry_to_delete)
      playlist_free_entry(entry_to_delete);


   memmove(playlist->entries + idx, playlist->entries + idx + 1,
         (playlist->size - idx) * sizeof(struct playlist_entry));

   playlist->modified = 1;
}
