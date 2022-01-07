
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* data; } ;
typedef TYPE_1__ task_retriever_info_t ;
struct TYPE_11__ {scalar_t__ handler; int element_size; TYPE_1__* list; int (* func ) (TYPE_3__*,TYPE_1__*) ;} ;
typedef TYPE_2__ task_retriever_data_t ;
struct TYPE_12__ {scalar_t__ handler; struct TYPE_12__* next; } ;
typedef TYPE_3__ retro_task_t ;
struct TYPE_13__ {TYPE_3__* front; } ;


 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int stub1 (TYPE_3__*,TYPE_1__*) ;
 TYPE_4__ tasks_running ;

__attribute__((used)) static void retro_task_regular_retrieve(task_retriever_data_t *data)
{
   retro_task_t *task = ((void*)0);
   task_retriever_info_t *tail = ((void*)0);


   for (task = tasks_running.front; task != ((void*)0); task = task->next)
   {
      task_retriever_info_t *info = ((void*)0);
      if (task->handler != data->handler)
         continue;


      info = (task_retriever_info_t*)malloc(sizeof(task_retriever_info_t));
      info->data = malloc(data->element_size);
      info->next = ((void*)0);


      if (!data->func(task, info->data))
      {
         free(info->data);
         free(info);
         continue;
      }


      if (data->list)
      {
         if (tail)
         {
            tail->next = info;
            tail = tail->next;
         }
         else
            tail = info;
      }
      else
      {
         data->list = info;
         tail = data->list;
      }
   }
}
