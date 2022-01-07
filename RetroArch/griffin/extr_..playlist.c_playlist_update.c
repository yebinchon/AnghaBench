
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int * crc32; int * db_name; int * core_name; int * core_path; int * label; int * path; } ;
struct TYPE_3__ {size_t size; int modified; struct playlist_entry* entries; } ;
typedef TYPE_1__ playlist_t ;


 int free (int *) ;
 void* strdup (int *) ;

void playlist_update(playlist_t *playlist, size_t idx,
      const struct playlist_entry *update_entry)
{
   struct playlist_entry *entry = ((void*)0);

   if (!playlist || idx > playlist->size)
      return;

   entry = &playlist->entries[idx];

   if (update_entry->path && (update_entry->path != entry->path))
   {
      if (entry->path != ((void*)0))
         free(entry->path);
      entry->path = strdup(update_entry->path);
      playlist->modified = 1;
   }

   if (update_entry->label && (update_entry->label != entry->label))
   {
      if (entry->label != ((void*)0))
         free(entry->label);
      entry->label = strdup(update_entry->label);
      playlist->modified = 1;
   }

   if (update_entry->core_path && (update_entry->core_path != entry->core_path))
   {
      if (entry->core_path != ((void*)0))
         free(entry->core_path);
      entry->core_path = ((void*)0);
      entry->core_path = strdup(update_entry->core_path);
      playlist->modified = 1;
   }

   if (update_entry->core_name && (update_entry->core_name != entry->core_name))
   {
      if (entry->core_name != ((void*)0))
         free(entry->core_name);
      entry->core_name = strdup(update_entry->core_name);
      playlist->modified = 1;
   }

   if (update_entry->db_name && (update_entry->db_name != entry->db_name))
   {
      if (entry->db_name != ((void*)0))
         free(entry->db_name);
      entry->db_name = strdup(update_entry->db_name);
      playlist->modified = 1;
   }

   if (update_entry->crc32 && (update_entry->crc32 != entry->crc32))
   {
      if (entry->crc32 != ((void*)0))
         free(entry->crc32);
      entry->crc32 = strdup(update_entry->crc32);
      playlist->modified = 1;
   }
}
