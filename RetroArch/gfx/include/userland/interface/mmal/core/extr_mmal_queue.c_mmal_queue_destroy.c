
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int semaphore; int lock; } ;
typedef TYPE_1__ MMAL_QUEUE_T ;


 int vcos_free (TYPE_1__*) ;
 int vcos_mutex_delete (int *) ;
 int vcos_semaphore_delete (int *) ;

void mmal_queue_destroy(MMAL_QUEUE_T *queue)
{
   if(!queue) return;
   vcos_mutex_delete(&queue->lock);
   vcos_semaphore_delete(&queue->semaphore);
   vcos_free(queue);
}
