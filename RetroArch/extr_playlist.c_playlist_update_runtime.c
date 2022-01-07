
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {scalar_t__ runtime_status; scalar_t__ runtime_hours; scalar_t__ runtime_minutes; scalar_t__ runtime_seconds; scalar_t__ last_played_year; scalar_t__ last_played_month; scalar_t__ last_played_day; scalar_t__ last_played_hour; scalar_t__ last_played_minute; scalar_t__ last_played_second; int * last_played_str; int * runtime_str; int * core_path; int * path; } ;
struct TYPE_3__ {size_t size; int modified; struct playlist_entry* entries; } ;
typedef TYPE_1__ playlist_t ;


 int free (int *) ;
 void* strdup (int *) ;

void playlist_update_runtime(playlist_t *playlist, size_t idx,
      const struct playlist_entry *update_entry,
      bool register_update)
{
   struct playlist_entry *entry = ((void*)0);

   if (!playlist || idx > playlist->size)
      return;

   entry = &playlist->entries[idx];

   if (update_entry->path && (update_entry->path != entry->path))
   {
      if (entry->path != ((void*)0))
         free(entry->path);
      entry->path = ((void*)0);
      entry->path = strdup(update_entry->path);
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->core_path && (update_entry->core_path != entry->core_path))
   {
      if (entry->core_path != ((void*)0))
         free(entry->core_path);
      entry->core_path = ((void*)0);
      entry->core_path = strdup(update_entry->core_path);
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->runtime_status != entry->runtime_status)
   {
      entry->runtime_status = update_entry->runtime_status;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->runtime_hours != entry->runtime_hours)
   {
      entry->runtime_hours = update_entry->runtime_hours;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->runtime_minutes != entry->runtime_minutes)
   {
      entry->runtime_minutes = update_entry->runtime_minutes;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->runtime_seconds != entry->runtime_seconds)
   {
      entry->runtime_seconds = update_entry->runtime_seconds;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->last_played_year != entry->last_played_year)
   {
      entry->last_played_year = update_entry->last_played_year;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->last_played_month != entry->last_played_month)
   {
      entry->last_played_month = update_entry->last_played_month;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->last_played_day != entry->last_played_day)
   {
      entry->last_played_day = update_entry->last_played_day;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->last_played_hour != entry->last_played_hour)
   {
      entry->last_played_hour = update_entry->last_played_hour;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->last_played_minute != entry->last_played_minute)
   {
      entry->last_played_minute = update_entry->last_played_minute;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->last_played_second != entry->last_played_second)
   {
      entry->last_played_second = update_entry->last_played_second;
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->runtime_str && (update_entry->runtime_str != entry->runtime_str))
   {
      if (entry->runtime_str != ((void*)0))
         free(entry->runtime_str);
      entry->runtime_str = ((void*)0);
      entry->runtime_str = strdup(update_entry->runtime_str);
      playlist->modified = playlist->modified || register_update;
   }

   if (update_entry->last_played_str && (update_entry->last_played_str != entry->last_played_str))
   {
      if (entry->last_played_str != ((void*)0))
         free(entry->last_played_str);
      entry->last_played_str = ((void*)0);
      entry->last_played_str = strdup(update_entry->last_played_str);
      playlist->modified = playlist->modified || register_update;
   }
}
