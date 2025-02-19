
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_QUEUE_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_DEBUG (char*,int ,scalar_t__) ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_send_buffer (TYPE_1__*,int *) ;
 int * mmal_queue_get (int *) ;
 int mmal_queue_put_back (int *,int *) ;

__attribute__((used)) static MMAL_STATUS_T send_buffer_from_queue(MMAL_PORT_T *port, MMAL_QUEUE_T *queue)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_BUFFER_HEADER_T *buffer;

   if (!queue)
      return MMAL_SUCCESS;

   buffer = mmal_queue_get(queue);

   if (buffer)
   {
      status = mmal_port_send_buffer(port, buffer);

      if (status != MMAL_SUCCESS)
      {
         mmal_queue_put_back(queue, buffer);
         LOG_DEBUG("%s send failed (%i)", port->name, status);
      }
   }

   return status;
}
