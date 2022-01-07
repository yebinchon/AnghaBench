
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {int queue; } ;
struct TYPE_10__ {scalar_t__ buffer_num; int name; TYPE_1__* priv; } ;
struct TYPE_9__ {int pf_send; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_POOL_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*) ;
 int LOG_TRACE (char*,int ,TYPE_2__*,TYPE_3__*) ;
 scalar_t__ MMAL_ENOMEM ;
 scalar_t__ MMAL_ENOSYS ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_buffer_header_release (int *) ;
 scalar_t__ mmal_port_send_buffer (TYPE_2__*,int *) ;
 int * mmal_queue_get (int ) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_populate_from_pool(MMAL_PORT_T* port, MMAL_POOL_T* pool)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   uint32_t buffer_idx;
   MMAL_BUFFER_HEADER_T *buffer;

   if (!port->priv->pf_send)
      return MMAL_ENOSYS;

   LOG_TRACE("%s port %p, pool: %p", port->name, port, pool);


   for (buffer_idx = 0; buffer_idx < port->buffer_num; buffer_idx++)
   {
      buffer = mmal_queue_get(pool->queue);
      if (!buffer)
      {
         LOG_ERROR("too few buffers in the pool");
         status = MMAL_ENOMEM;
         break;
      }

      status = mmal_port_send_buffer(port, buffer);
      if (status != MMAL_SUCCESS)
      {
         LOG_ERROR("failed to send buffer to port");
         mmal_buffer_header_release(buffer);
         break;
      }
   }

   return status;
}
