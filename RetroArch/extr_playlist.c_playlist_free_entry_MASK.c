#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct playlist_entry {scalar_t__ last_played_second; scalar_t__ last_played_minute; scalar_t__ last_played_hour; scalar_t__ last_played_day; scalar_t__ last_played_month; scalar_t__ last_played_year; scalar_t__ runtime_seconds; scalar_t__ runtime_minutes; scalar_t__ runtime_hours; int /*<<< orphan*/  runtime_status; int /*<<< orphan*/ * subsystem_roms; int /*<<< orphan*/ * last_played_str; int /*<<< orphan*/ * runtime_str; int /*<<< orphan*/ * subsystem_name; int /*<<< orphan*/ * subsystem_ident; int /*<<< orphan*/ * crc32; int /*<<< orphan*/ * db_name; int /*<<< orphan*/ * core_name; int /*<<< orphan*/ * core_path; int /*<<< orphan*/ * label; int /*<<< orphan*/ * path; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYLIST_RUNTIME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct playlist_entry *entry)
{
   if (!entry)
      return;

   if (entry->path != NULL)
      FUNC0(entry->path);
   if (entry->label != NULL)
      FUNC0(entry->label);
   if (entry->core_path != NULL)
      FUNC0(entry->core_path);
   if (entry->core_name != NULL)
      FUNC0(entry->core_name);
   if (entry->db_name != NULL)
      FUNC0(entry->db_name);
   if (entry->crc32 != NULL)
      FUNC0(entry->crc32);
   if (entry->subsystem_ident != NULL)
      FUNC0(entry->subsystem_ident);
   if (entry->subsystem_name != NULL)
      FUNC0(entry->subsystem_name);
   if (entry->runtime_str != NULL)
      FUNC0(entry->runtime_str);
   if (entry->last_played_str != NULL)
      FUNC0(entry->last_played_str);
   if (entry->subsystem_roms != NULL)
      FUNC1(entry->subsystem_roms);

   entry->path      = NULL;
   entry->label     = NULL;
   entry->core_path = NULL;
   entry->core_name = NULL;
   entry->db_name   = NULL;
   entry->crc32     = NULL;
   entry->subsystem_ident = NULL;
   entry->subsystem_name = NULL;
   entry->runtime_str = NULL;
   entry->last_played_str = NULL;
   entry->subsystem_roms = NULL;
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