
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; struct TYPE_4__* next; } ;
typedef TYPE_1__ task_retriever_info_t ;


 int free (TYPE_1__*) ;

void task_queue_retriever_info_free(task_retriever_info_t *list)
{
   task_retriever_info_t *info;


   while (list)
   {
      info = list->next;
      free(list->data);
      free(list);
      list = info;
   }
}
