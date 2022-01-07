
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int state_slot; } ;
struct TYPE_10__ {TYPE_1__ ints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_11__ {int load_to_backup_buffer; int autoload; int title; int callback; int handler; struct TYPE_11__* state; int type; int has_valid_framebuffer; int state_slot; int path; } ;
typedef TYPE_3__ save_task_state_t ;
typedef TYPE_3__ retro_task_t ;


 int MSG_LOADING_STATE ;
 int TASK_TYPE_BLOCKING ;
 scalar_t__ calloc (int,int) ;
 TYPE_2__* config_get_ptr () ;
 int content_load_state_cb ;
 int free (TYPE_3__*) ;
 int msg_hash_to_str (int ) ;
 int strdup (int ) ;
 int strlcpy (int ,char const*,int) ;
 TYPE_3__* task_init () ;
 int task_load_handler ;
 int task_queue_push (TYPE_3__*) ;
 int video_driver_cached_frame_has_valid_framebuffer () ;

bool content_load_state(const char *path,
      bool load_to_backup_buffer, bool autoload)
{
   retro_task_t *task = task_init();
   save_task_state_t *state = (save_task_state_t*)calloc(1, sizeof(*state));
   settings_t *settings = config_get_ptr();

   if (!task || !state)
      goto error;

   strlcpy(state->path, path, sizeof(state->path));
   state->load_to_backup_buffer = load_to_backup_buffer;
   state->autoload = autoload;
   state->state_slot = settings->ints.state_slot;
   state->has_valid_framebuffer =
      video_driver_cached_frame_has_valid_framebuffer();

   task->type = TASK_TYPE_BLOCKING;
   task->state = state;
   task->handler = task_load_handler;
   task->callback = content_load_state_cb;
   task->title = strdup(msg_hash_to_str(MSG_LOADING_STATE));

   task_queue_push(task);

   return 1;

error:
   if (state)
      free(state);
   if (task)
      free(task);

   return 0;
}
