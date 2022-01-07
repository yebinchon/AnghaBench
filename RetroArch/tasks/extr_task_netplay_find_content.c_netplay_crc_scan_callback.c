
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct retro_system_info {char* library_name; } ;
typedef int retro_task_t ;
struct TYPE_10__ {char* subsystem_name; char* content_path; char* core_path; char* core_name; int * hostname; scalar_t__ current; scalar_t__ contentless; } ;
typedef TYPE_2__ netplay_crc_handle_t ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_3__ content_ctx_info_t ;
struct TYPE_9__ {int data; } ;


 int CMD_EVENT_NETPLAY_INIT_DIRECT ;
 int CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED ;
 int CMD_EVENT_RESUME ;
 int CORE_TYPE_PLAIN ;
 int MENU_ENUM_LABEL_VALUE_NETPLAY_LOAD_CONTENT_MANUALLY ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int RARCH_LOG (char*,...) ;
 int command_event (int ,int *) ;
 int content_add_subsystem (int ) ;
 int content_clear_subsystem () ;
 int content_set_subsystem_by_name (char*) ;
 int fflush (int ) ;
 int free (TYPE_2__*) ;
 int msg_hash_to_str (int ) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 int stdout ;
 scalar_t__ string_is_empty (char*) ;
 scalar_t__ string_is_equal (char*,char*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char*,char*) ;
 int task_push_load_content_with_core_from_menu (char*,TYPE_3__*,int ,int *,int *) ;
 int task_push_load_new_core (char*,int *,TYPE_3__*,int ,int *,int *) ;
 int task_push_load_subsystem_with_core_from_menu (int *,TYPE_3__*,int ,int *,int *) ;
 int task_push_start_current_core (TYPE_3__*) ;

__attribute__((used)) static void netplay_crc_scan_callback(retro_task_t *task,
      void *task_data,
      void *user_data, const char *error)
{
   netplay_crc_handle_t *state = (netplay_crc_handle_t*)task_data;
   content_ctx_info_t content_info = {0};

   if (!state)
      return;

   fflush(stdout);

   if (!string_is_empty(state->subsystem_name) && !string_is_equal(state->subsystem_name, "N/A"))
   {
      content_ctx_info_t content_info = {0};
      struct string_list *game_list = string_split(state->content_path, "|");
      unsigned i = 0;

      task_push_load_new_core(state->core_path, ((void*)0),
            &content_info, CORE_TYPE_PLAIN, ((void*)0), ((void*)0));
      content_clear_subsystem();
      if (!content_set_subsystem_by_name(state->subsystem_name))
         RARCH_LOG("[Lobby] Subsystem not found in implementation\n");

      for (i = 0; i < game_list->size; i++)
         content_add_subsystem(game_list->elems[i].data);
      task_push_load_subsystem_with_core_from_menu(
         ((void*)0), &content_info,
         CORE_TYPE_PLAIN, ((void*)0), ((void*)0));
      string_list_free(game_list);
      return;
   }


   if (!string_is_empty(state->core_path) && !string_is_empty(state->content_path)
      && !state->contentless && !state->current)
   {
      struct retro_system_info *system = runloop_get_libretro_system_info();

      RARCH_LOG("[Lobby] Loading core %s with content file %s\n",
         state->core_path, state->content_path);

      command_event(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, state->hostname);

      if (system && string_is_equal(system->library_name, state->core_name))
         task_push_load_content_with_core_from_menu(
               state->content_path, &content_info,
               CORE_TYPE_PLAIN, ((void*)0), ((void*)0));
      else
      {
         task_push_load_new_core(state->core_path, ((void*)0),
               &content_info, CORE_TYPE_PLAIN, ((void*)0), ((void*)0));
         task_push_load_content_with_core_from_menu(
               state->content_path, &content_info,
               CORE_TYPE_PLAIN, ((void*)0), ((void*)0));
      }

   }
   else


   if (!string_is_empty(state->core_path) && !string_is_empty(state->content_path)
      && state->contentless)
   {
      content_ctx_info_t content_info = {0};
      struct retro_system_info *system = runloop_get_libretro_system_info();

      RARCH_LOG("[Lobby] Loading contentless core %s\n", state->core_path);

      command_event(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, state->hostname);

      if (!string_is_equal(system->library_name, state->core_name))
         task_push_load_new_core(state->core_path, ((void*)0),
               &content_info, CORE_TYPE_PLAIN, ((void*)0), ((void*)0));

      task_push_start_current_core(&content_info);
   }

   else if (!string_is_empty(state->core_path) && !string_is_empty(state->content_path)
      && state->current)
   {
      RARCH_LOG("[Lobby] Loading core %s with current content\n", state->core_path);
      command_event(CMD_EVENT_NETPLAY_INIT_DIRECT, state->hostname);
      command_event(CMD_EVENT_RESUME, ((void*)0));
   }

   else
   {
      RARCH_LOG("[Lobby] Couldn't find a suitable %s\n",
         string_is_empty(state->content_path) ? "content file" : "core");
      runloop_msg_queue_push(
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NETPLAY_LOAD_CONTENT_MANUALLY),
            1, 480, 1,
            ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }

   free(state);
}
