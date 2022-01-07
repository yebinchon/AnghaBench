
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct queue_elem {int dummy; } ;
struct TYPE_4__ {size_t size; int ptr; struct queue_elem** elems; } ;
typedef TYPE_1__ msg_queue_t ;


 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;

msg_queue_t *msg_queue_new(size_t size)
{
   struct queue_elem **elems = ((void*)0);
   msg_queue_t *queue = (msg_queue_t*)calloc(1, sizeof(*queue));

   if (!queue)
      return ((void*)0);

   queue->size = size + 1;

   elems = (struct queue_elem**)calloc(queue->size,
         sizeof(struct queue_elem*));

   if (!elems)
   {
      free(queue);
      return ((void*)0);
   }

   queue->elems = elems;
   queue->ptr = 1;

   return queue;
}
