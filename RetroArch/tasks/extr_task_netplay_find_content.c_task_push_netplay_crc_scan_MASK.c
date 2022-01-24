#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
typedef  int uint32_t ;
struct string_list {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  path_content_history; int /*<<< orphan*/  directory_playlist; } ;
struct TYPE_14__ {TYPE_1__ paths; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_15__ {char* content_crc; char* content_path; char* hostname; char* core_name; char* subsystem_name; int found; char* core_path; char* core_extensions; int /*<<< orphan*/  title; int /*<<< orphan*/  callback; int /*<<< orphan*/  handler; struct TYPE_15__* state; int /*<<< orphan*/  type; struct string_list* lpl_list; } ;
typedef  TYPE_4__ retro_task_t ;
typedef  TYPE_4__ netplay_crc_handle_t ;
struct TYPE_16__ {unsigned int count; TYPE_2__* list; } ;
typedef  TYPE_6__ core_info_list_t ;
struct TYPE_13__ {char* core_name; char const* path; char const* supported_extensions; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_TYPE_BLOCKING ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__**) ; 
 struct string_list* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  netplay_crc_scan_callback ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct string_list*,int /*<<< orphan*/ ,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 TYPE_4__* FUNC13 () ; 
 int /*<<< orphan*/  task_netplay_crc_scan_handler ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

bool FUNC15(uint32_t crc, char* name,
      const char *hostname, const char *core_name, const char *subsystem)
{
   unsigned i;
   union string_list_elem_attr attr;
   struct string_list *lpl_list = NULL;
   core_info_list_t *info       = NULL;
   settings_t        *settings  = FUNC1();
   retro_task_t          *task  = FUNC13();
   netplay_crc_handle_t *state  = (netplay_crc_handle_t*)
      FUNC0(1, sizeof(*state));

   if (!task || !state)
      goto error;

   state->content_crc[0]    = '\0';
   state->content_path[0]   = '\0';
   state->hostname[0]       = '\0';
   state->core_name[0]      = '\0';
   state->subsystem_name[0] = '\0';
   attr.i = 0;

   FUNC6(state->content_crc,
         sizeof(state->content_crc),
         "%08X|crc", crc);

   FUNC12(state->content_path,
         name, sizeof(state->content_path));
   FUNC12(state->hostname,
         hostname, sizeof(state->hostname));
   FUNC12(state->subsystem_name,
         subsystem, sizeof(state->subsystem_name));
   FUNC12(state->core_name,
         core_name, sizeof(state->core_name));

   lpl_list = FUNC3(settings->paths.directory_playlist,
         NULL, true, true, true, false);

   if (!lpl_list)
      goto error;

   state->lpl_list = lpl_list;

   FUNC11(state->lpl_list,
         settings->paths.path_content_history, attr);
   state->found = false;

   FUNC2(&info);

   for (i = 0; i < info->count; i++)
   {
      /* check if the core name matches.
         TO-DO :we could try to load the core too to check
         if the version string matches too */
#if 0
      printf("Info: %s State: %s", info->list[i].core_name, state->core_name);
#endif
      if (FUNC9(info->list[i].core_name, state->core_name))
      {
         FUNC12(state->core_path,
               info->list[i].path, sizeof(state->core_path));

         if (FUNC10(state->content_path, "N/A") &&
            !FUNC8(info->list[i].supported_extensions))
         {
            FUNC12(state->core_extensions,
                  info->list[i].supported_extensions,
                  sizeof(state->core_extensions));
         }
         break;
      }
   }

   /* blocking means no other task can run while this one is running,
    * which is the default */
   task->type           = TASK_TYPE_BLOCKING;
   task->state          = state;
   task->handler        = task_netplay_crc_scan_handler;
   task->callback       = netplay_crc_scan_callback;
   task->title          = FUNC7("Looking for matching content...");

   FUNC14(task);

   return true;

error:
   if (state)
      FUNC4(state);
   if (task)
      FUNC4(task);

   return false;
}