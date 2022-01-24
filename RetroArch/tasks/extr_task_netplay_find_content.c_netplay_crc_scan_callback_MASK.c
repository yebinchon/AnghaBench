#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct retro_system_info {char* library_name; } ;
typedef  int /*<<< orphan*/  retro_task_t ;
struct TYPE_10__ {char* subsystem_name; char* content_path; char* core_path; char* core_name; int /*<<< orphan*/ * hostname; scalar_t__ current; scalar_t__ contentless; } ;
typedef  TYPE_2__ netplay_crc_handle_t ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ content_ctx_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_NETPLAY_INIT_DIRECT ; 
 int /*<<< orphan*/  CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED ; 
 int /*<<< orphan*/  CMD_EVENT_RESUME ; 
 int /*<<< orphan*/  CORE_TYPE_PLAIN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NETPLAY_LOAD_CONTENT_MANUALLY ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct retro_system_info* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct string_list*) ; 
 struct string_list* FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC18(retro_task_t *task,
      void *task_data,
      void *user_data, const char *error)
{
   netplay_crc_handle_t *state     = (netplay_crc_handle_t*)task_data;
   content_ctx_info_t content_info = {0};

   if (!state)
      return;

   FUNC5(stdout);

   if (!FUNC10(state->subsystem_name) && !FUNC11(state->subsystem_name, "N/A"))
   {
      content_ctx_info_t content_info  = {0};
      struct string_list *game_list = FUNC13(state->content_path, "|");
      unsigned i = 0;

      FUNC15(state->core_path, NULL,
            &content_info, CORE_TYPE_PLAIN, NULL, NULL);
      FUNC3();
      if (!FUNC4(state->subsystem_name))
         FUNC0("[Lobby] Subsystem not found in implementation\n");

      for (i = 0; i < game_list->size; i++)
         FUNC2(game_list->elems[i].data);
      FUNC16(
         NULL, &content_info,
         CORE_TYPE_PLAIN, NULL, NULL);
      FUNC12(game_list);
      return;
   }

   /* regular core with content file */
   if (!FUNC10(state->core_path) && !FUNC10(state->content_path)
      && !state->contentless && !state->current)
   {
      struct retro_system_info *system = FUNC8();

      FUNC0("[Lobby] Loading core %s with content file %s\n",
         state->core_path, state->content_path);

      FUNC1(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, state->hostname);

      if (system && FUNC11(system->library_name, state->core_name))
         FUNC14(
               state->content_path, &content_info,
               CORE_TYPE_PLAIN, NULL, NULL);
      else
      {
         FUNC15(state->core_path, NULL,
               &content_info, CORE_TYPE_PLAIN, NULL, NULL);
         FUNC14(
               state->content_path, &content_info,
               CORE_TYPE_PLAIN, NULL, NULL);
      }

   }
   else

   /* contentless core */
   if (!FUNC10(state->core_path) && !FUNC10(state->content_path)
      && state->contentless)
   {
      content_ctx_info_t content_info  = {0};
      struct retro_system_info *system = FUNC8();

      FUNC0("[Lobby] Loading contentless core %s\n", state->core_path);

      FUNC1(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, state->hostname);

      if (!FUNC11(system->library_name, state->core_name))
         FUNC15(state->core_path, NULL,
               &content_info, CORE_TYPE_PLAIN, NULL, NULL);

      FUNC17(&content_info);
   }
   /* regular core with current content */
   else if (!FUNC10(state->core_path) && !FUNC10(state->content_path)
      && state->current)
   {
      FUNC0("[Lobby] Loading core %s with current content\n", state->core_path);
      FUNC1(CMD_EVENT_NETPLAY_INIT_DIRECT, state->hostname);
      FUNC1(CMD_EVENT_RESUME, NULL);
   }
   /* no match found */
   else
   {
      FUNC0("[Lobby] Couldn't find a suitable %s\n",
         FUNC10(state->content_path) ? "content file" : "core");
      FUNC9(
            FUNC7(MENU_ENUM_LABEL_VALUE_NETPLAY_LOAD_CONTENT_MANUALLY),
            1, 480, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }

   FUNC6(state);
}