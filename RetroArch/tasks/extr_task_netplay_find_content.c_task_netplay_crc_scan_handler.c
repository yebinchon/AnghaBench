
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct string_list {size_t size; TYPE_1__* elems; } ;
struct playlist_entry {char* path; char* crc32; } ;
struct TYPE_13__ {scalar_t__ state; } ;
typedef TYPE_2__ retro_task_t ;
typedef int playlist_t ;
struct TYPE_14__ {int found; int contentless; char* content_crc; char* content_path; int current; char* subsystem_name; char const* core_extensions; int hostname; struct string_list* lpl_list; } ;
typedef TYPE_3__ netplay_crc_handle_t ;
typedef int entry ;
typedef int current ;
struct TYPE_12__ {char* data; } ;


 int CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED ;
 int COLLECTION_SIZE ;
 int MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,...) ;
 int begin_task (TYPE_2__*,char*) ;
 int command_event (int ,int ) ;
 int content_get_crc () ;
 scalar_t__ core_requires_content (TYPE_3__*) ;
 int finish_task (TYPE_2__*,char*) ;
 int free (TYPE_3__*) ;
 int get_entry (char*,int,char const*) ;
 char* msg_hash_to_str (int ) ;
 char* path_get_extension (char const*) ;
 int playlist_free (int *) ;
 int playlist_get_index (int *,size_t,struct playlist_entry const**) ;
 unsigned int playlist_get_size (int *) ;
 int * playlist_init (char const*,int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ string_is_empty (char*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strstr (char const*,char*) ;
 int task_set_data (TYPE_2__*,TYPE_3__*) ;
 int task_set_progress (TYPE_2__*,int) ;

__attribute__((used)) static void task_netplay_crc_scan_handler(retro_task_t *task)
{
   size_t i, j, k;
   char entry[PATH_MAX_LENGTH];
   bool have_crc = 0;
   netplay_crc_handle_t *state = (netplay_crc_handle_t*)task->state;

   begin_task(task, "Looking for compatible content...");




   if (!core_requires_content(state))
   {
      state->found = 1;
      state->contentless = 1;
      task_set_data(task, state);
      finish_task(task, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
      return;
   }


   if (!state->lpl_list)
   {
      finish_task(task, "Playlist directory not found");
      free(state);
      return;
   }


   if (state->lpl_list->size == 0 && core_requires_content(state))
   {
      string_list_free(state->lpl_list);
      finish_task(task, "There are no playlists available; cannot execute search");
      command_event(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, state->hostname);
      free(state);
      return;
   }

   have_crc = !string_is_equal(state->content_crc, "00000000|crc");


   if (have_crc && content_get_crc() > 0)
   {
      char current[PATH_MAX_LENGTH];

      RARCH_LOG("[Lobby] Testing CRC matching for: %s\n", state->content_crc);

      snprintf(current, sizeof(current), "%X|crc", content_get_crc());
      RARCH_LOG("[Lobby] Current content crc: %s\n", current);

      if (string_is_equal(current, state->content_crc))
      {
         RARCH_LOG("[Lobby] CRC match %s with currently loaded content\n", current);
         strlcpy(state->content_path, "N/A", sizeof(state->content_path));
         state->found = 1;
         state->current = 1;
         task_set_data(task, state);
         finish_task(task, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
         string_list_free(state->lpl_list);
         return;
      }
   }


   if (string_is_empty(state->subsystem_name) || string_is_equal(state->subsystem_name, "N/A"))
   {
      for (i = 0; i < state->lpl_list->size; i++)
      {
         playlist_t *playlist = ((void*)0);
         unsigned playlist_size = 0;
         const char *lpl_path = state->lpl_list->elems[i].data;


         if (!strstr(lpl_path, ".lpl"))
            continue;

         RARCH_LOG("[Lobby] Searching playlist: %s\n", lpl_path);
         playlist = playlist_init(lpl_path, COLLECTION_SIZE);
         playlist_size = playlist_get_size(playlist);

         for (j = 0; j < playlist_size; j++)
         {
            const char *playlist_path = ((void*)0);
            const char *playlist_crc32 = ((void*)0);
            const struct playlist_entry *playlist_entry = ((void*)0);

            playlist_get_index(playlist, j, &playlist_entry);

            playlist_path = playlist_entry->path;
            playlist_crc32 = playlist_entry->crc32;

            if (have_crc && string_is_equal(playlist_crc32, state->content_crc))
            {
               RARCH_LOG("[Lobby] CRC match %s\n", playlist_crc32);
               strlcpy(state->content_path, playlist_path, sizeof(state->content_path));
               state->found = 1;
               task_set_data(task, state);
               finish_task(task, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
               string_list_free(state->lpl_list);
               playlist_free(playlist);
               return;
            }

            get_entry(entry, sizeof(entry), playlist_path);






            if (!string_is_empty(entry) &&
               string_is_equal(entry, state->content_path) &&
               strstr(state->core_extensions, path_get_extension(playlist_path)))
            {
               RARCH_LOG("[Lobby] Filename match %s\n", playlist_path);

               strlcpy(state->content_path, playlist_path, sizeof(state->content_path));
               state->found = 1;
               task_set_data(task, state);
               finish_task(task, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
               string_list_free(state->lpl_list);
               playlist_free(playlist);
               return;
            }

            task_set_progress(task, (int)(j / playlist_size * 100.0));
         }

         playlist_free(playlist);
      }
   }
   else
   {
      bool found[100];
      struct string_list *game_list = string_split(state->content_path, "|");

      for (i = 0; i < game_list->size; i++)
      {
         found[i] = 0;

         for (j = 0; j < state->lpl_list->size && !found[i]; j++)
         {
            playlist_t *playlist = ((void*)0);
            unsigned playlist_size = 0;
            const char *lpl_path = state->lpl_list->elems[j].data;


            if (!strstr(lpl_path, ".lpl"))
               continue;

            RARCH_LOG("[Lobby] Searching content %d/%d (%s) in playlist: %s\n", i + 1, game_list->size, game_list->elems[i].data, lpl_path);
            playlist = playlist_init(lpl_path, COLLECTION_SIZE);
            playlist_size = playlist_get_size(playlist);

            for (k = 0; k < playlist_size && !found[i]; k++)
            {
               const struct playlist_entry *playlist_entry = ((void*)0);

               playlist_get_index(playlist, k, &playlist_entry);

               get_entry(entry, sizeof(entry), playlist_entry->path);

               if (!string_is_empty(entry) &&
                  strstr(game_list->elems[i].data, entry) &&
                  strstr(state->core_extensions, path_get_extension(playlist_entry->path)))
               {
                  RARCH_LOG("[Lobby] filename match %s\n", playlist_entry->path);

                  if (i == 0)
                  {
                     state->content_path[0] = '\0';
                     strlcpy(state->content_path, playlist_entry->path, sizeof(state->content_path));
                  }
                  else
                  {
                     strlcat(state->content_path, "|", sizeof(state->content_path));
                     strlcat(state->content_path, playlist_entry->path, sizeof(state->content_path));
                  }

                  found[i] = 1;
               }

               task_set_progress(task, (int)(j / playlist_size * 100.0));
            }

            playlist_free(playlist);
         }
      }

      for (i = 0; i < game_list->size; i++)
      {
         state->found = 1;
         if (!found[i])
         {
            state->found = 0;
            break;
         }
      }

      if (state->found)
      {
         RARCH_LOG("[Lobby] Subsystem matching set found %s\n", state->content_path);
         task_set_data(task, state);
         finish_task(task, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
      }

      string_list_free(state->lpl_list);
      string_list_free(game_list);
      return;
   }


   string_list_free(state->lpl_list);
   finish_task(task, "Failed to locate matching content by either CRC or filename.");
   command_event(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, state->hostname);
   free(state);
}
