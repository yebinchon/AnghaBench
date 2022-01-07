
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * storage; int push; int pop; } ;
typedef TYPE_1__ VCHIU_QUEUE_T ;


 int vcos_event_delete (int *) ;
 int vcos_free (int *) ;

void vchiu_queue_delete(VCHIU_QUEUE_T *queue)
{
   vcos_event_delete(&queue->pop);
   vcos_event_delete(&queue->push);
   if (queue->storage != ((void*)0))
      vcos_free(queue->storage);
}
