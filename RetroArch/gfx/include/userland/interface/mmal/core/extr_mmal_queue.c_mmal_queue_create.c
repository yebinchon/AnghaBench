
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; scalar_t__ first; scalar_t__* last; scalar_t__ length; int semaphore; } ;
typedef TYPE_1__ MMAL_QUEUE_T ;


 scalar_t__ VCOS_SUCCESS ;
 int mmal_queue_sanity_check (TYPE_1__*,int *) ;
 int vcos_free (TYPE_1__*) ;
 TYPE_1__* vcos_malloc (int,char*) ;
 scalar_t__ vcos_mutex_create (int *,char*) ;
 int vcos_mutex_delete (int *) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int ) ;

MMAL_QUEUE_T *mmal_queue_create(void)
{
   MMAL_QUEUE_T *queue;

   queue = vcos_malloc(sizeof(*queue), "MMAL queue");
   if(!queue) return 0;

   if(vcos_mutex_create(&queue->lock, "MMAL queue lock") != VCOS_SUCCESS )
   {
      vcos_free(queue);
      return 0;
   }

   if(vcos_semaphore_create(&queue->semaphore, "MMAL queue sema", 0) != VCOS_SUCCESS )
   {
      vcos_mutex_delete(&queue->lock);
      vcos_free(queue);
      return 0;
   }

                                      vcos_mutex_lock(&queue->lock);
   queue->length = 0;
   queue->first = 0;
   queue->last = &queue->first;
   mmal_queue_sanity_check(queue, ((void*)0));
                                        vcos_mutex_unlock(&queue->lock);

   return queue;
}
