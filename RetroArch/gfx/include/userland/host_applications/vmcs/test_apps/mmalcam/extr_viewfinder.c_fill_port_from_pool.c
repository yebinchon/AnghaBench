
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * queue; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_QUEUE_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_POOL_T ;


 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_queue_length (int *) ;
 scalar_t__ send_buffer_from_queue (int *,int *) ;

__attribute__((used)) static MMAL_STATUS_T fill_port_from_pool(MMAL_PORT_T *port, MMAL_POOL_T *pool)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_QUEUE_T *queue;

   if (!pool)
      return MMAL_SUCCESS;

   queue = pool->queue;
   while (status == MMAL_SUCCESS && mmal_queue_length(queue) > 0)
      status = send_buffer_from_queue(port, queue);

   return status;
}
