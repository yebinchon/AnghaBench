
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; void* data; } ;
typedef TYPE_1__ task_retriever_info_t ;



void *task_queue_retriever_info_next(task_retriever_info_t **link)
{
   void *data = ((void*)0);


   if (*link)
   {
      data = (*link)->data;
      *link = (*link)->next;
   }

   return data;
}
