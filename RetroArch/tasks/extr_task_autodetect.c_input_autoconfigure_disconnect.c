
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int idx; struct TYPE_8__* msg; int handler; struct TYPE_8__* state; } ;
typedef TYPE_1__ retro_task_t ;
typedef int msg ;
typedef TYPE_1__ autoconfig_disconnect_t ;


 int MSG_DEVICE_DISCONNECTED_FROM_PORT ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 int input_autoconfigure_disconnect_handler ;
 int input_config_clear_device_config_name (unsigned int) ;
 int input_config_clear_device_config_path (unsigned int) ;
 int input_config_clear_device_display_name (unsigned int) ;
 int input_config_clear_device_name (unsigned int) ;
 char* msg_hash_to_str (int ) ;
 int snprintf (char*,int,char*,char*,unsigned int,char const*) ;
 TYPE_1__* strdup (char*) ;
 int string_is_empty (TYPE_1__*) ;
 TYPE_1__* task_init () ;
 int task_queue_push (TYPE_1__*) ;

bool input_autoconfigure_disconnect(unsigned i, const char *ident)
{
   char msg[255];
   retro_task_t *task = task_init();
   autoconfig_disconnect_t *state = (autoconfig_disconnect_t*)calloc(1, sizeof(*state));

   if (!state || !task)
      goto error;

   msg[0] = '\0';

   state->idx = i;

   snprintf(msg, sizeof(msg), "%s #%u (%s).",
         msg_hash_to_str(MSG_DEVICE_DISCONNECTED_FROM_PORT),
         i, ident);

   state->msg = strdup(msg);

   input_config_clear_device_name(state->idx);
   input_config_clear_device_display_name(state->idx);
   input_config_clear_device_config_name(state->idx);
   input_config_clear_device_config_path(state->idx);

   task->state = state;
   task->handler = input_autoconfigure_disconnect_handler;

   task_queue_push(task);

   return 1;

error:
   if (state)
   {
      if (!string_is_empty(state->msg))
         free(state->msg);
      free(state);
   }
   if (task)
      free(task);

   return 0;
}
