
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {char* core_path; char* path; char* runtime_str; char* last_played_str; int last_played_second; int last_played_minute; int last_played_hour; int last_played_day; int last_played_month; int last_played_year; int runtime_seconds; int runtime_minutes; int runtime_hours; int runtime_status; } ;
typedef int real_path ;
typedef int real_core_path ;
struct TYPE_3__ {size_t size; int cap; int modified; struct playlist_entry* entries; } ;
typedef TYPE_1__ playlist_t ;


 int PATH_MAX_LENGTH ;
 int RARCH_ERR (char*) ;
 int memmove (struct playlist_entry*,struct playlist_entry*,int) ;
 int path_resolve_realpath (char*,int,int) ;
 int playlist_core_path_equal (char*,char*) ;
 int playlist_free_entry (struct playlist_entry*) ;
 scalar_t__ playlist_path_equal (char*,char const*) ;
 void* strdup (char*) ;
 scalar_t__ string_is_empty (char const*) ;
 int string_is_equal (char*,char*) ;
 int strlcpy (char*,char*,int) ;

bool playlist_push_runtime(playlist_t *playlist,
      const struct playlist_entry *entry)
{
   size_t i;
   char real_path[PATH_MAX_LENGTH];
   char real_core_path[PATH_MAX_LENGTH];

   real_path[0] = '\0';
   real_core_path[0] = '\0';

   if (!playlist || !entry)
      return 0;

   if (string_is_empty(entry->core_path))
   {
      RARCH_ERR("cannot push NULL or empty core path into the playlist.\n");
      return 0;
   }


   if (!string_is_empty(entry->path))
   {
      strlcpy(real_path, entry->path, sizeof(real_path));
      path_resolve_realpath(real_path, sizeof(real_path), 1);
   }


   strlcpy(real_core_path, entry->core_path, sizeof(real_core_path));
   if (!string_is_equal(real_core_path, "DETECT"))
      path_resolve_realpath(real_core_path, sizeof(real_core_path), 1);

   if (string_is_empty(real_core_path))
   {
      RARCH_ERR("cannot push NULL or empty core path into the playlist.\n");
      return 0;
   }

   for (i = 0; i < playlist->size; i++)
   {
      struct playlist_entry tmp;
      const char *entry_path = playlist->entries[i].path;
      bool equal_path =
         (string_is_empty(real_path) && string_is_empty(entry_path)) ||
         playlist_path_equal(real_path, entry_path);



      if (!equal_path)
         continue;

      if (!playlist_core_path_equal(real_core_path, playlist->entries[i].core_path))
         continue;



      if (i == 0)
         return 0;


      tmp = playlist->entries[i];
      memmove(playlist->entries + 1, playlist->entries,
            i * sizeof(struct playlist_entry));
      playlist->entries[0] = tmp;

      goto success;
   }

   if (playlist->size == playlist->cap)
   {
      struct playlist_entry *last_entry = &playlist->entries[playlist->cap - 1];

      if (last_entry)
         playlist_free_entry(last_entry);
      playlist->size--;
   }

   if (playlist->entries)
   {
      memmove(playlist->entries + 1, playlist->entries,
            (playlist->cap - 1) * sizeof(struct playlist_entry));

      playlist->entries[0].path = ((void*)0);
      playlist->entries[0].core_path = ((void*)0);

      if (!string_is_empty(real_path))
         playlist->entries[0].path = strdup(real_path);
      if (!string_is_empty(real_core_path))
         playlist->entries[0].core_path = strdup(real_core_path);

      playlist->entries[0].runtime_status = entry->runtime_status;
      playlist->entries[0].runtime_hours = entry->runtime_hours;
      playlist->entries[0].runtime_minutes = entry->runtime_minutes;
      playlist->entries[0].runtime_seconds = entry->runtime_seconds;
      playlist->entries[0].last_played_year = entry->last_played_year;
      playlist->entries[0].last_played_month = entry->last_played_month;
      playlist->entries[0].last_played_day = entry->last_played_day;
      playlist->entries[0].last_played_hour = entry->last_played_hour;
      playlist->entries[0].last_played_minute = entry->last_played_minute;
      playlist->entries[0].last_played_second = entry->last_played_second;

      playlist->entries[0].runtime_str = ((void*)0);
      playlist->entries[0].last_played_str = ((void*)0);

      if (!string_is_empty(entry->runtime_str))
         playlist->entries[0].runtime_str = strdup(entry->runtime_str);
      if (!string_is_empty(entry->last_played_str))
         playlist->entries[0].last_played_str = strdup(entry->last_played_str);
   }

   playlist->size++;

success:
   playlist->modified = 1;

   return 1;
}
