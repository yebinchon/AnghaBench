
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* elems; } ;
typedef TYPE_1__ msg_queue_t ;


 int free (TYPE_1__*) ;
 int msg_queue_clear (TYPE_1__*) ;

void msg_queue_free(msg_queue_t *queue)
{
   if (queue)
   {
      msg_queue_clear(queue);
      free(queue->elems);
   }
   free(queue);
}
