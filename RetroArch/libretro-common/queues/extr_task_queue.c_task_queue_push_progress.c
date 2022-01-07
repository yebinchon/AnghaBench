
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int progress; int (* progress_cb ) (TYPE_1__*) ;int title; scalar_t__ error; scalar_t__ finished; int mute; } ;
typedef TYPE_1__ retro_task_t ;


 int stub1 (TYPE_1__*) ;
 int task_queue_msg_push (TYPE_1__*,int,int,int,char*,...) ;

__attribute__((used)) static void task_queue_push_progress(retro_task_t *task)
{
   if (task->title && !task->mute)
   {
      if (task->finished)
      {
         if (task->error)
            task_queue_msg_push(task, 1, 60, 1, "%s: %s",
               "Task failed", task->title);
         else
            task_queue_msg_push(task, 1, 60, 0, "100%%: %s", task->title);
      }
      else
      {
         if (task->progress >= 0 && task->progress <= 100)
            task_queue_msg_push(task, 1, 60, 1, "%i%%: %s",
                  task->progress, task->title);
         else
            task_queue_msg_push(task, 1, 60, 0, "%s...", task->title);
      }

      if (task->progress_cb)
         task->progress_cb(task);
   }
}
