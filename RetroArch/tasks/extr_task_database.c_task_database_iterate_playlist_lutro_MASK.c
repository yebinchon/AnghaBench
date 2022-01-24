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
struct playlist_entry {char* path; char* label; char* core_path; char* core_name; char* db_name; char* crc32; scalar_t__ last_played_second; scalar_t__ last_played_minute; scalar_t__ last_played_hour; scalar_t__ last_played_day; scalar_t__ last_played_month; scalar_t__ last_played_year; scalar_t__ runtime_seconds; scalar_t__ runtime_minutes; scalar_t__ runtime_hours; int /*<<< orphan*/ * subsystem_roms; int /*<<< orphan*/ * subsystem_name; int /*<<< orphan*/ * subsystem_ident; } ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_3__ {int /*<<< orphan*/  playlist_directory; } ;
typedef  TYPE_1__ db_handle_t ;
typedef  int /*<<< orphan*/  database_state_handle_t ;
typedef  int /*<<< orphan*/  database_info_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  COLLECTION_SIZE ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
      db_handle_t *_db,
      database_state_handle_t *db_state,
      database_info_handle_t *db,
      const char *path)
{
   char *db_playlist_path  = (char*)FUNC3(PATH_MAX_LENGTH * sizeof(char));
   playlist_t   *playlist  = NULL;

   db_playlist_path[0]     = '\0';

   if (!FUNC9(_db->playlist_directory))
      FUNC0(db_playlist_path,
            _db->playlist_directory,
            "Lutro.lpl",
            PATH_MAX_LENGTH * sizeof(char));

   playlist = FUNC6(db_playlist_path, COLLECTION_SIZE);

   FUNC2(db_playlist_path);

   if (!FUNC4(playlist,
            path, "DETECT"))
   {
      struct playlist_entry entry;
      char *game_title            = (char*)FUNC3(PATH_MAX_LENGTH * sizeof(char));

      game_title[0] = '\0';

      FUNC1(game_title,
            path, PATH_MAX_LENGTH * sizeof(char));

      /* the push function reads our entry as const, so these casts are safe */
      entry.path              = (char*)path;
      entry.label             = game_title;
      entry.core_path         = (char*)"DETECT";
      entry.core_name         = (char*)"DETECT";
      entry.db_name           = (char*)"Lutro.lpl";
      entry.crc32             = (char*)"DETECT";
      entry.subsystem_ident   = NULL;
      entry.subsystem_name    = NULL;
      entry.subsystem_roms    = NULL;
      entry.runtime_hours     = 0;
      entry.runtime_minutes   = 0;
      entry.runtime_seconds   = 0;
      entry.last_played_year  = 0;
      entry.last_played_month = 0;
      entry.last_played_day   = 0;
      entry.last_played_hour  = 0;
      entry.last_played_minute= 0;
      entry.last_played_second= 0;

      FUNC7(playlist, &entry);

      FUNC2(game_title);
   }

   FUNC8(playlist);
   FUNC5(playlist);

   return 0;
}