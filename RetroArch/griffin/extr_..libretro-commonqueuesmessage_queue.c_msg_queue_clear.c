
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ptr; TYPE_3__* tmp_msg; TYPE_3__** elems; } ;
typedef TYPE_1__ msg_queue_t ;
struct TYPE_5__ {struct TYPE_5__* msg; } ;


 int free (TYPE_3__*) ;

void msg_queue_clear(msg_queue_t *queue)
{
   size_t i;

   if (!queue)
      return;

   for (i = 1; i < queue->ptr; i++)
   {
      if (queue->elems[i])
      {
         free(queue->elems[i]->msg);
         free(queue->elems[i]);
         queue->elems[i] = ((void*)0);
      }
   }
   queue->ptr = 1;
   free(queue->tmp_msg);
   queue->tmp_msg = ((void*)0);
}
