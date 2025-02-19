
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int queue; } ;
struct TYPE_12__ {int name; TYPE_1__* priv; } ;
struct TYPE_11__ {int pf_send; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_POOL_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int ) ;
 int LOG_TRACE (char*,int ,TYPE_2__*,int ,TYPE_2__*,TYPE_3__*) ;
 scalar_t__ MMAL_ENOSYS ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_buffer_header_release (int *) ;
 scalar_t__ mmal_port_send_buffer (TYPE_2__*,int *) ;
 int * mmal_queue_get (int ) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_populate_clock_ports(MMAL_PORT_T* output, MMAL_PORT_T* input, MMAL_POOL_T* pool)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_BUFFER_HEADER_T *buffer;

   if (!output->priv->pf_send || !input->priv->pf_send)
      return MMAL_ENOSYS;

   LOG_TRACE("output %s %p, input %s %p, pool: %p", output->name, output, input->name, input, pool);

   buffer = mmal_queue_get(pool->queue);
   while (buffer)
   {
      status = mmal_port_send_buffer(output, buffer);
      if (status != MMAL_SUCCESS)
      {
         LOG_ERROR("failed to send buffer to clock port %s", output->name);
         mmal_buffer_header_release(buffer);
         break;
      }

      buffer = mmal_queue_get(pool->queue);
      if (buffer)
      {
         status = mmal_port_send_buffer(input, buffer);
         if (status != MMAL_SUCCESS)
         {
            LOG_ERROR("failed to send buffer to clock port %s", output->name);
            mmal_buffer_header_release(buffer);
            break;
         }
         buffer = mmal_queue_get(pool->queue);
      }
   }

   return status;
}
