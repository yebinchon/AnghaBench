
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int task_title ;
struct TYPE_8__ {void* userdata; int func; } ;
typedef TYPE_1__ task_finder_data_t ;
struct TYPE_9__ {int alternative_look; int status; scalar_t__ list_index; scalar_t__ list_size; int * playlist; void* playlist_name; void* playlist_path; scalar_t__ progress; void* title; struct TYPE_9__* state; int handler; } ;
typedef TYPE_2__ retro_task_t ;
typedef int playlist_name ;
typedef TYPE_2__ pl_manager_handle_t ;


 int MSG_PLAYLIST_MANAGER_RESETTING_CORES ;
 int PATH_MAX_LENGTH ;
 int PL_MANAGER_BEGIN ;
 scalar_t__ calloc (int,int) ;
 int fill_pathname_base_noext (char*,char const*,int) ;
 int free (TYPE_2__*) ;
 int msg_hash_to_str (int ) ;
 void* strdup (char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;
 TYPE_2__* task_init () ;
 int task_pl_manager_reset_cores_finder ;
 int task_pl_manager_reset_cores_handler ;
 scalar_t__ task_queue_find (TYPE_1__*) ;
 int task_queue_push (TYPE_2__*) ;

bool task_push_pl_manager_reset_cores(const char *playlist_path)
{
   task_finder_data_t find_data;
   char playlist_name[PATH_MAX_LENGTH];
   char task_title[PATH_MAX_LENGTH];
   retro_task_t *task = task_init();
   pl_manager_handle_t *pl_manager = (pl_manager_handle_t*)calloc(1, sizeof(pl_manager_handle_t));

   playlist_name[0] = '\0';
   task_title[0] = '\0';


   if (!task || !pl_manager)
      goto error;

   if (string_is_empty(playlist_path))
      goto error;

   fill_pathname_base_noext(playlist_name, playlist_path, sizeof(playlist_name));

   if (string_is_empty(playlist_name))
      goto error;



   find_data.func = task_pl_manager_reset_cores_finder;
   find_data.userdata = (void*)playlist_path;

   if (task_queue_find(&find_data))
      goto error;


   strlcpy(
         task_title, msg_hash_to_str(MSG_PLAYLIST_MANAGER_RESETTING_CORES),
         sizeof(task_title));
   strlcat(task_title, playlist_name, sizeof(task_title));

   task->handler = task_pl_manager_reset_cores_handler;
   task->state = pl_manager;
   task->title = strdup(task_title);
   task->alternative_look = 1;
   task->progress = 0;


   pl_manager->playlist_path = strdup(playlist_path);
   pl_manager->playlist_name = strdup(playlist_name);
   pl_manager->playlist = ((void*)0);
   pl_manager->list_size = 0;
   pl_manager->list_index = 0;
   pl_manager->status = PL_MANAGER_BEGIN;

   task_queue_push(task);

   return 1;

error:

   if (task)
   {
      free(task);
      task = ((void*)0);
   }

   if (pl_manager)
   {
      free(pl_manager);
      pl_manager = ((void*)0);
   }

   return 0;
}
