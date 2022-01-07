
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
struct TYPE_4__ {int semaphore; } ;
typedef TYPE_1__ MMAL_QUEUE_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 scalar_t__ VCOS_SUCCESS ;
 int * mmal_queue_get_core (TYPE_1__*) ;
 scalar_t__ vcos_semaphore_wait_timeout (int *,int ) ;

MMAL_BUFFER_HEADER_T *mmal_queue_timedwait(MMAL_QUEUE_T *queue, VCOS_UNSIGNED timeout)
{
    if (!queue)
        return ((void*)0);

    if (vcos_semaphore_wait_timeout(&queue->semaphore, timeout) != VCOS_SUCCESS)
        return ((void*)0);

    return mmal_queue_get_core(queue);
}
