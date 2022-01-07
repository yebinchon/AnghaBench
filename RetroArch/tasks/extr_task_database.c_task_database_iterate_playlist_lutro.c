
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {char* path; char* label; char* core_path; char* core_name; char* db_name; char* crc32; scalar_t__ last_played_second; scalar_t__ last_played_minute; scalar_t__ last_played_hour; scalar_t__ last_played_day; scalar_t__ last_played_month; scalar_t__ last_played_year; scalar_t__ runtime_seconds; scalar_t__ runtime_minutes; scalar_t__ runtime_hours; int * subsystem_roms; int * subsystem_name; int * subsystem_ident; } ;
typedef int playlist_t ;
struct TYPE_3__ {int playlist_directory; } ;
typedef TYPE_1__ db_handle_t ;
typedef int database_state_handle_t ;
typedef int database_info_handle_t ;


 int COLLECTION_SIZE ;
 int PATH_MAX_LENGTH ;
 int fill_pathname_join (char*,int ,char*,int) ;
 int fill_short_pathname_representation_noext (char*,char const*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int playlist_entry_exists (int *,char const*,char*) ;
 int playlist_free (int *) ;
 int * playlist_init (char*,int ) ;
 int playlist_push (int *,struct playlist_entry*) ;
 int playlist_write_file (int *) ;
 int string_is_empty (int ) ;

__attribute__((used)) static int task_database_iterate_playlist_lutro(
      db_handle_t *_db,
      database_state_handle_t *db_state,
      database_info_handle_t *db,
      const char *path)
{
   char *db_playlist_path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   playlist_t *playlist = ((void*)0);

   db_playlist_path[0] = '\0';

   if (!string_is_empty(_db->playlist_directory))
      fill_pathname_join(db_playlist_path,
            _db->playlist_directory,
            "Lutro.lpl",
            PATH_MAX_LENGTH * sizeof(char));

   playlist = playlist_init(db_playlist_path, COLLECTION_SIZE);

   free(db_playlist_path);

   if (!playlist_entry_exists(playlist,
            path, "DETECT"))
   {
      struct playlist_entry entry;
      char *game_title = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

      game_title[0] = '\0';

      fill_short_pathname_representation_noext(game_title,
            path, PATH_MAX_LENGTH * sizeof(char));


      entry.path = (char*)path;
      entry.label = game_title;
      entry.core_path = (char*)"DETECT";
      entry.core_name = (char*)"DETECT";
      entry.db_name = (char*)"Lutro.lpl";
      entry.crc32 = (char*)"DETECT";
      entry.subsystem_ident = ((void*)0);
      entry.subsystem_name = ((void*)0);
      entry.subsystem_roms = ((void*)0);
      entry.runtime_hours = 0;
      entry.runtime_minutes = 0;
      entry.runtime_seconds = 0;
      entry.last_played_year = 0;
      entry.last_played_month = 0;
      entry.last_played_day = 0;
      entry.last_played_hour = 0;
      entry.last_played_minute= 0;
      entry.last_played_second= 0;

      playlist_push(playlist, &entry);

      free(game_title);
   }

   playlist_write_file(playlist);
   playlist_free(playlist);

   return 0;
}
