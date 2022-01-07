
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int dummy; } ;
struct TYPE_3__ {struct playlist_entry* entries; } ;
typedef TYPE_1__ playlist_t ;



void playlist_get_index(playlist_t *playlist,
      size_t idx,
      const struct playlist_entry **entry)
{
   if (!playlist || !entry)
      return;

   *entry = &playlist->entries[idx];
}
