
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {size_t size; struct playlist_entry* entries; struct playlist_entry* default_core_name; struct playlist_entry* default_core_path; struct playlist_entry* conf_path; } ;
typedef struct playlist_entry playlist_t ;


 int free (struct playlist_entry*) ;
 int playlist_free_entry (struct playlist_entry*) ;

void playlist_free(playlist_t *playlist)
{
   size_t i;

   if (!playlist)
      return;

   if (playlist->conf_path != ((void*)0))
      free(playlist->conf_path);
   playlist->conf_path = ((void*)0);

   if (playlist->default_core_path != ((void*)0))
      free(playlist->default_core_path);
   playlist->default_core_path = ((void*)0);

   if (playlist->default_core_name != ((void*)0))
      free(playlist->default_core_name);
   playlist->default_core_name = ((void*)0);

   for (i = 0; i < playlist->size; i++)
   {
      struct playlist_entry *entry = &playlist->entries[i];

      if (entry)
         playlist_free_entry(entry);
   }

   free(playlist->entries);
   playlist->entries = ((void*)0);

   free(playlist);
}
