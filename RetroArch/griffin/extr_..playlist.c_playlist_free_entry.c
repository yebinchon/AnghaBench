
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {scalar_t__ last_played_second; scalar_t__ last_played_minute; scalar_t__ last_played_hour; scalar_t__ last_played_day; scalar_t__ last_played_month; scalar_t__ last_played_year; scalar_t__ runtime_seconds; scalar_t__ runtime_minutes; scalar_t__ runtime_hours; int runtime_status; int * subsystem_roms; int * last_played_str; int * runtime_str; int * subsystem_name; int * subsystem_ident; int * crc32; int * db_name; int * core_name; int * core_path; int * label; int * path; } ;


 int PLAYLIST_RUNTIME_UNKNOWN ;
 int free (int *) ;
 int string_list_free (int *) ;

__attribute__((used)) static void playlist_free_entry(struct playlist_entry *entry)
{
   if (!entry)
      return;

   if (entry->path != ((void*)0))
      free(entry->path);
   if (entry->label != ((void*)0))
      free(entry->label);
   if (entry->core_path != ((void*)0))
      free(entry->core_path);
   if (entry->core_name != ((void*)0))
      free(entry->core_name);
   if (entry->db_name != ((void*)0))
      free(entry->db_name);
   if (entry->crc32 != ((void*)0))
      free(entry->crc32);
   if (entry->subsystem_ident != ((void*)0))
      free(entry->subsystem_ident);
   if (entry->subsystem_name != ((void*)0))
      free(entry->subsystem_name);
   if (entry->runtime_str != ((void*)0))
      free(entry->runtime_str);
   if (entry->last_played_str != ((void*)0))
      free(entry->last_played_str);
   if (entry->subsystem_roms != ((void*)0))
      string_list_free(entry->subsystem_roms);

   entry->path = ((void*)0);
   entry->label = ((void*)0);
   entry->core_path = ((void*)0);
   entry->core_name = ((void*)0);
   entry->db_name = ((void*)0);
   entry->crc32 = ((void*)0);
   entry->subsystem_ident = ((void*)0);
   entry->subsystem_name = ((void*)0);
   entry->runtime_str = ((void*)0);
   entry->last_played_str = ((void*)0);
   entry->subsystem_roms = ((void*)0);
   entry->runtime_status = PLAYLIST_RUNTIME_UNKNOWN;
   entry->runtime_hours = 0;
   entry->runtime_minutes = 0;
   entry->runtime_seconds = 0;
   entry->last_played_year = 0;
   entry->last_played_month = 0;
   entry->last_played_day = 0;
   entry->last_played_hour = 0;
   entry->last_played_minute = 0;
   entry->last_played_second = 0;
}
