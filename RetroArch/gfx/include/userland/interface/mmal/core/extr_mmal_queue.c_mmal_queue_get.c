
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int semaphore; } ;
typedef TYPE_1__ MMAL_QUEUE_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 scalar_t__ VCOS_SUCCESS ;
 int * mmal_queue_get_core (TYPE_1__*) ;
 int vcos_assert (TYPE_1__*) ;
 scalar_t__ vcos_semaphore_trywait (int *) ;

MMAL_BUFFER_HEADER_T *mmal_queue_get(MMAL_QUEUE_T *queue)
{
   vcos_assert(queue);
   if(!queue) return 0;

   if(vcos_semaphore_trywait(&queue->semaphore) != VCOS_SUCCESS)
       return ((void*)0);

   return mmal_queue_get_core(queue);
}
