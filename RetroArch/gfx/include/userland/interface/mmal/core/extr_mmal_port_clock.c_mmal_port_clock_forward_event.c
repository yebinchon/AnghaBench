
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int length; int data; } ;
struct TYPE_18__ {int id; } ;
struct TYPE_17__ {TYPE_2__* priv; int name; } ;
struct TYPE_16__ {TYPE_1__* clock; } ;
struct TYPE_15__ {int queue; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_CLOCK_EVENT_T ;
typedef TYPE_5__ MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int ) ;
 int LOG_INFO (char*,int ,char const*) ;
 scalar_t__ MMAL_ENOSPC ;
 scalar_t__ MMAL_SUCCESS ;
 int memcpy (int ,TYPE_4__ const*,int) ;
 scalar_t__ mmal_buffer_header_mem_lock (TYPE_5__*) ;
 int mmal_buffer_header_mem_unlock (TYPE_5__*) ;
 int mmal_port_buffer_header_callback (TYPE_3__*,TYPE_5__*) ;
 TYPE_5__* mmal_queue_get (int ) ;
 int mmal_queue_put_back (int ,TYPE_5__*) ;
 int mmal_status_to_string (scalar_t__) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_clock_forward_event(MMAL_PORT_T *port, const MMAL_CLOCK_EVENT_T *event)
{
   MMAL_STATUS_T status;
   MMAL_BUFFER_HEADER_T *buffer;

   buffer = mmal_queue_get(port->priv->clock->queue);
   if (!buffer)
   {
      LOG_INFO("%s: no free event buffers available for event %4.4s", port->name, (const char*)&event->id);
      return MMAL_ENOSPC;
   }

   status = mmal_buffer_header_mem_lock(buffer);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("failed to lock buffer %s", mmal_status_to_string(status));
      mmal_queue_put_back(port->priv->clock->queue, buffer);
      goto end;
   }
   buffer->length = sizeof(MMAL_CLOCK_EVENT_T);
   memcpy(buffer->data, event, buffer->length);
   mmal_buffer_header_mem_unlock(buffer);

   mmal_port_buffer_header_callback(port, buffer);

end:
   return status;
}
