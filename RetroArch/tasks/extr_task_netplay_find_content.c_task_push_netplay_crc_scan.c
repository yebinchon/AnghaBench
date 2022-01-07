
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
typedef int uint32_t ;
struct string_list {int dummy; } ;
struct TYPE_12__ {int path_content_history; int directory_playlist; } ;
struct TYPE_14__ {TYPE_1__ paths; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_15__ {char* content_crc; char* content_path; char* hostname; char* core_name; char* subsystem_name; int found; char* core_path; char* core_extensions; int title; int callback; int handler; struct TYPE_15__* state; int type; struct string_list* lpl_list; } ;
typedef TYPE_4__ retro_task_t ;
typedef TYPE_4__ netplay_crc_handle_t ;
struct TYPE_16__ {unsigned int count; TYPE_2__* list; } ;
typedef TYPE_6__ core_info_list_t ;
struct TYPE_13__ {char* core_name; char const* path; char const* supported_extensions; } ;


 int TASK_TYPE_BLOCKING ;
 scalar_t__ calloc (int,int) ;
 TYPE_3__* config_get_ptr () ;
 int core_info_get_list (TYPE_6__**) ;
 struct string_list* dir_list_new (int ,int *,int,int,int,int) ;
 int free (TYPE_4__*) ;
 int netplay_crc_scan_callback ;
 int printf (char*,char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int strdup (char*) ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char*,char*) ;
 scalar_t__ string_is_not_equal (char*,char*) ;
 int string_list_append (struct string_list*,int ,union string_list_elem_attr) ;
 int strlcpy (char*,char const*,int) ;
 TYPE_4__* task_init () ;
 int task_netplay_crc_scan_handler ;
 int task_queue_push (TYPE_4__*) ;

bool task_push_netplay_crc_scan(uint32_t crc, char* name,
      const char *hostname, const char *core_name, const char *subsystem)
{
   unsigned i;
   union string_list_elem_attr attr;
   struct string_list *lpl_list = ((void*)0);
   core_info_list_t *info = ((void*)0);
   settings_t *settings = config_get_ptr();
   retro_task_t *task = task_init();
   netplay_crc_handle_t *state = (netplay_crc_handle_t*)
      calloc(1, sizeof(*state));

   if (!task || !state)
      goto error;

   state->content_crc[0] = '\0';
   state->content_path[0] = '\0';
   state->hostname[0] = '\0';
   state->core_name[0] = '\0';
   state->subsystem_name[0] = '\0';
   attr.i = 0;

   snprintf(state->content_crc,
         sizeof(state->content_crc),
         "%08X|crc", crc);

   strlcpy(state->content_path,
         name, sizeof(state->content_path));
   strlcpy(state->hostname,
         hostname, sizeof(state->hostname));
   strlcpy(state->subsystem_name,
         subsystem, sizeof(state->subsystem_name));
   strlcpy(state->core_name,
         core_name, sizeof(state->core_name));

   lpl_list = dir_list_new(settings->paths.directory_playlist,
         ((void*)0), 1, 1, 1, 0);

   if (!lpl_list)
      goto error;

   state->lpl_list = lpl_list;

   string_list_append(state->lpl_list,
         settings->paths.path_content_history, attr);
   state->found = 0;

   core_info_get_list(&info);

   for (i = 0; i < info->count; i++)
   {






      if (string_is_equal(info->list[i].core_name, state->core_name))
      {
         strlcpy(state->core_path,
               info->list[i].path, sizeof(state->core_path));

         if (string_is_not_equal(state->content_path, "N/A") &&
            !string_is_empty(info->list[i].supported_extensions))
         {
            strlcpy(state->core_extensions,
                  info->list[i].supported_extensions,
                  sizeof(state->core_extensions));
         }
         break;
      }
   }



   task->type = TASK_TYPE_BLOCKING;
   task->state = state;
   task->handler = task_netplay_crc_scan_handler;
   task->callback = netplay_crc_scan_callback;
   task->title = strdup("Looking for matching content...");

   task_queue_push(task);

   return 1;

error:
   if (state)
      free(state);
   if (task)
      free(task);

   return 0;
}
