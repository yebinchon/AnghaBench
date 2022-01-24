#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {char* core_path; char* path; char* runtime_str; char* last_played_str; int /*<<< orphan*/  last_played_second; int /*<<< orphan*/  last_played_minute; int /*<<< orphan*/  last_played_hour; int /*<<< orphan*/  last_played_day; int /*<<< orphan*/  last_played_month; int /*<<< orphan*/  last_played_year; int /*<<< orphan*/  runtime_seconds; int /*<<< orphan*/  runtime_minutes; int /*<<< orphan*/  runtime_hours; int /*<<< orphan*/  runtime_status; } ;
typedef  int /*<<< orphan*/  real_path ;
typedef  int /*<<< orphan*/  real_core_path ;
struct TYPE_3__ {size_t size; int cap; int modified; struct playlist_entry* entries; } ;
typedef  TYPE_1__ playlist_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct playlist_entry*,struct playlist_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct playlist_entry*) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 void* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

bool FUNC10(playlist_t *playlist,
      const struct playlist_entry *entry)
{
   size_t i;
   char real_path[PATH_MAX_LENGTH];
   char real_core_path[PATH_MAX_LENGTH];

   real_path[0] = '\0';
   real_core_path[0] = '\0';

   if (!playlist || !entry)
      return false;

   if (FUNC7(entry->core_path))
   {
      FUNC0("cannot push NULL or empty core path into the playlist.\n");
      return false;
   }

   /* Get 'real' path */
   if (!FUNC7(entry->path))
   {
      FUNC9(real_path, entry->path, sizeof(real_path));
      FUNC2(real_path, sizeof(real_path), true);
   }

   /* Get 'real' core path */
   FUNC9(real_core_path, entry->core_path, sizeof(real_core_path));
   if (!FUNC8(real_core_path, "DETECT"))
      FUNC2(real_core_path, sizeof(real_core_path), true);

   if (FUNC7(real_core_path))
   {
      FUNC0("cannot push NULL or empty core path into the playlist.\n");
      return false;
   }

   for (i = 0; i < playlist->size; i++)
   {
      struct playlist_entry tmp;
      const char *entry_path = playlist->entries[i].path;
      bool equal_path        =
         (FUNC7(real_path) && FUNC7(entry_path)) ||
         FUNC5(real_path, entry_path);

      /* Core name can have changed while still being the same core.
       * Differentiate based on the core path only. */
      if (!equal_path)
         continue;

      if (!FUNC3(real_core_path, playlist->entries[i].core_path))
         continue;

      /* If top entry, we don't want to push a new entry since
       * the top and the entry to be pushed are the same. */
      if (i == 0)
         return false;

      /* Seen it before, bump to top. */
      tmp = playlist->entries[i];
      FUNC1(playlist->entries + 1, playlist->entries,
            i * sizeof(struct playlist_entry));
      playlist->entries[0] = tmp;

      goto success;
   }

   if (playlist->size == playlist->cap)
   {
      struct playlist_entry *last_entry = &playlist->entries[playlist->cap - 1];

      if (last_entry)
         FUNC4(last_entry);
      playlist->size--;
   }

   if (playlist->entries)
   {
      FUNC1(playlist->entries + 1, playlist->entries,
            (playlist->cap - 1) * sizeof(struct playlist_entry));

      playlist->entries[0].path            = NULL;
      playlist->entries[0].core_path       = NULL;

      if (!FUNC7(real_path))
         playlist->entries[0].path      = FUNC6(real_path);
      if (!FUNC7(real_core_path))
         playlist->entries[0].core_path = FUNC6(real_core_path);

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

      playlist->entries[0].runtime_str        = NULL;
      playlist->entries[0].last_played_str    = NULL;

      if (!FUNC7(entry->runtime_str))
         playlist->entries[0].runtime_str     = FUNC6(entry->runtime_str);
      if (!FUNC7(entry->last_played_str))
         playlist->entries[0].last_played_str = FUNC6(entry->last_played_str);
   }

   playlist->size++;

success:
   playlist->modified = true;

   return true;
}