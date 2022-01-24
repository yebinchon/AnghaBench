#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct string_list {size_t size; TYPE_1__* elems; } ;
struct playlist_entry {char* path; char* crc32; } ;
struct TYPE_13__ {scalar_t__ state; } ;
typedef  TYPE_2__ retro_task_t ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_14__ {int found; int contentless; char* content_crc; char* content_path; int current; char* subsystem_name; char const* core_extensions; int /*<<< orphan*/  hostname; struct string_list* lpl_list; } ;
typedef  TYPE_3__ netplay_crc_handle_t ;
typedef  int /*<<< orphan*/  entry ;
typedef  int /*<<< orphan*/  current ;
struct TYPE_12__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED ; 
 int /*<<< orphan*/  COLLECTION_SIZE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,size_t,struct playlist_entry const**) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 scalar_t__ FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct string_list*) ; 
 struct string_list* FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,int) ; 
 scalar_t__ FUNC21 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC24(retro_task_t *task)
{
   size_t i, j, k;
   char entry[PATH_MAX_LENGTH];
   bool have_crc               = false;
   netplay_crc_handle_t *state = (netplay_crc_handle_t*)task->state;

   FUNC1(task, "Looking for compatible content...");

   /* start by checking cases that don't require a search */

   /* the core doesn't have any content to match, so fast-succeed */
   if (!FUNC4(state))
   {
      state->found = true;
      state->contentless = true;
      FUNC22(task, state);
      FUNC5(task, FUNC8(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
      return;
   }

   /* if this list is null, it means that RA failed to open the playlist directory */
   if (!state->lpl_list)
   {
      FUNC5(task, "Playlist directory not found");
      FUNC6(state);
      return;
   }

   /* We opened the playlist directory, but there's nothing there. Nothing to do. */
   if (state->lpl_list->size == 0 && FUNC4(state))
   {
      FUNC17(state->lpl_list);
      FUNC5(task, "There are no playlists available; cannot execute search");
      FUNC2(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, state->hostname);
      FUNC6(state);
      return;
   }

   have_crc = !FUNC16(state->content_crc, "00000000|crc");

   /* if content is already loaded and the lobby gave us a CRC, check the loaded content first */
   if (have_crc && FUNC3() > 0)
   {
      char current[PATH_MAX_LENGTH];

      FUNC0("[Lobby] Testing CRC matching for: %s\n", state->content_crc);

      FUNC14(current, sizeof(current), "%X|crc", FUNC3());
      FUNC0("[Lobby] Current content crc: %s\n", current);

      if (FUNC16(current, state->content_crc))
      {
         FUNC0("[Lobby] CRC match %s with currently loaded content\n", current);
         FUNC20(state->content_path, "N/A", sizeof(state->content_path));
         state->found = true;
         state->current = true;
         FUNC22(task, state);
         FUNC5(task, FUNC8(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
         FUNC17(state->lpl_list);
         return;
      }
   }

   /* now let's do the search */
   if (FUNC15(state->subsystem_name) || FUNC16(state->subsystem_name, "N/A"))
   {
      for (i = 0; i < state->lpl_list->size; i++)
      {
         playlist_t *playlist   = NULL;
         unsigned playlist_size = 0;
         const char *lpl_path   = state->lpl_list->elems[i].data;

         /* skip files without .lpl file extension */
         if (!FUNC21(lpl_path, ".lpl"))
            continue;

         FUNC0("[Lobby] Searching playlist: %s\n", lpl_path);
         playlist      = FUNC13(lpl_path, COLLECTION_SIZE);
         playlist_size = FUNC12(playlist);

         for (j = 0; j < playlist_size; j++)
         {
            const char *playlist_path     = NULL;
            const char *playlist_crc32    = NULL;
            const struct playlist_entry *playlist_entry = NULL;

            FUNC11(playlist, j, &playlist_entry);

            playlist_path = playlist_entry->path;
            playlist_crc32 = playlist_entry->crc32;

            if (have_crc && FUNC16(playlist_crc32, state->content_crc))
            {
               FUNC0("[Lobby] CRC match %s\n", playlist_crc32);
               FUNC20(state->content_path, playlist_path, sizeof(state->content_path));
               state->found = true;
               FUNC22(task, state);
               FUNC5(task, FUNC8(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
               FUNC17(state->lpl_list);
               FUNC10(playlist);
               return;
            }

            FUNC7(entry, sizeof(entry), playlist_path);

            /* See if the filename is a match. The response depends on whether or not we are doing a CRC
            * search.
            * Otherwise, on match we complete the task and mark it as successful immediately.
            */

            if (!FUNC15(entry) &&
               FUNC16(entry, state->content_path) &&
               FUNC21(state->core_extensions, FUNC9(playlist_path)))
            {
               FUNC0("[Lobby] Filename match %s\n", playlist_path);

               FUNC20(state->content_path, playlist_path, sizeof(state->content_path));
               state->found = true;
               FUNC22(task, state);
               FUNC5(task, FUNC8(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
               FUNC17(state->lpl_list);
               FUNC10(playlist);
               return;
            }

            FUNC23(task, (int)(j / playlist_size * 100.0));
         }

         FUNC10(playlist);
      }
   }
   else
   {
      bool found[100];
      struct string_list *game_list = FUNC18(state->content_path, "|");

      for (i = 0; i < game_list->size; i++)
      {
         found[i] = false;

         for (j = 0; j < state->lpl_list->size && !found[i]; j++)
         {
            playlist_t *playlist   = NULL;
            unsigned playlist_size = 0;
            const char *lpl_path   = state->lpl_list->elems[j].data;

            /* skip files without .lpl file extension */
            if (!FUNC21(lpl_path, ".lpl"))
               continue;

            FUNC0("[Lobby] Searching content %d/%d (%s) in playlist: %s\n", i + 1, game_list->size, game_list->elems[i].data, lpl_path);
            playlist      = FUNC13(lpl_path, COLLECTION_SIZE);
            playlist_size = FUNC12(playlist);

            for (k = 0; k < playlist_size && !found[i]; k++)
            {
               const struct playlist_entry *playlist_entry = NULL;

               FUNC11(playlist, k, &playlist_entry);

               FUNC7(entry, sizeof(entry), playlist_entry->path);

               if (!FUNC15(entry) &&
                  FUNC21(game_list->elems[i].data, entry) &&
                  FUNC21(state->core_extensions, FUNC9(playlist_entry->path)))
               {
                  FUNC0("[Lobby] filename match %s\n", playlist_entry->path);

                  if (i == 0)
                  {
                     state->content_path[0] = '\0';
                     FUNC20(state->content_path, playlist_entry->path, sizeof(state->content_path));
                  }
                  else
                  {
                     FUNC19(state->content_path, "|", sizeof(state->content_path));
                     FUNC19(state->content_path, playlist_entry->path, sizeof(state->content_path));
                  }

                  found[i] = true;
               }

               FUNC23(task, (int)(j / playlist_size * 100.0));
            }

            FUNC10(playlist);
         }
      }

      for (i = 0; i < game_list->size; i++)
      {
         state->found = true;
         if (!found[i])
         {
            state->found = false;
            break;
         }
      }

      if (state->found)
      {
         FUNC0("[Lobby] Subsystem matching set found %s\n", state->content_path);
         FUNC22(task, state);
         FUNC5(task, FUNC8(MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND));
      }

      FUNC17(state->lpl_list);
      FUNC17(game_list);
      return;
   }

   /* end of the line. no matches at all. */
   FUNC17(state->lpl_list);
   FUNC5(task, "Failed to locate matching content by either CRC or filename.");
   FUNC2(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, state->hostname);
   FUNC6(state);
}