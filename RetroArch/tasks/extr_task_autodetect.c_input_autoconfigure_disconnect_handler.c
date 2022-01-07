
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_11__ {struct TYPE_11__* msg; } ;
typedef TYPE_2__ autoconfig_disconnect_t ;


 int MSG_AUTODETECT ;
 int RARCH_LOG (char*,int ,TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int msg_hash_to_str (int ) ;
 int strdup (TYPE_2__*) ;
 int string_is_empty (TYPE_2__*) ;
 int task_set_finished (TYPE_1__*,int) ;
 int task_set_title (TYPE_1__*,int ) ;

__attribute__((used)) static void input_autoconfigure_disconnect_handler(retro_task_t *task)
{
   autoconfig_disconnect_t *params = (autoconfig_disconnect_t*)task->state;

   task_set_title(task, strdup(params->msg));

   task_set_finished(task, 1);

   RARCH_LOG("%s: %s\n", msg_hash_to_str(MSG_AUTODETECT), params->msg);

   if (!string_is_empty(params->msg))
      free(params->msg);
   free(params);
}
