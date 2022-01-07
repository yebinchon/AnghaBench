
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* title; struct TYPE_8__* error; int (* cleanup ) (TYPE_1__*) ;int user_data; int task_data; int (* callback ) (TYPE_1__*,int ,int ,TYPE_1__*) ;} ;
typedef TYPE_1__ retro_task_t ;


 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ,int ,TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 TYPE_1__* task_queue_get (int *) ;
 int task_queue_push_progress (TYPE_1__*) ;
 int tasks_finished ;

__attribute__((used)) static void retro_task_internal_gather(void)
{
   retro_task_t *task = ((void*)0);
   while ((task = task_queue_get(&tasks_finished)) != ((void*)0))
   {
      task_queue_push_progress(task);

      if (task->callback)
         task->callback(task, task->task_data, task->user_data, task->error);

      if (task->cleanup)
          task->cleanup(task);

      if (task->error)
         free(task->error);

      if (task->title)
         free(task->title);

      free(task);
   }
}
