
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int is_enabled; void* time_disable; int flags; TYPE_1__* pool; int queue; int out; int in; int name; } ;
struct TYPE_5__ {scalar_t__ headers_num; int queue; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_CONNECTION_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*) ;
 int LOG_TRACE (char*,TYPE_2__*,int ) ;
 int MMAL_CONNECTION_FLAG_TUNNELLING ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_buffer_header_release (int *) ;
 scalar_t__ mmal_port_disable (int ) ;
 int * mmal_queue_get (int ) ;
 scalar_t__ mmal_queue_length (int ) ;
 int vcos_assert (int) ;
 void* vcos_getmicrosecs () ;

MMAL_STATUS_T mmal_connection_disable(MMAL_CONNECTION_T *connection)
{
   MMAL_STATUS_T status;
   MMAL_BUFFER_HEADER_T *buffer;

   LOG_TRACE("%p, %s", connection, connection->name);

   if (!connection->is_enabled)
      return MMAL_SUCCESS;

   connection->time_disable = vcos_getmicrosecs();


   if (connection->flags & MMAL_CONNECTION_FLAG_TUNNELLING)
   {

      status = mmal_port_disable(connection->out);
      if (status)
         LOG_ERROR("output port couldn't be disabled");
      goto done;
   }


   status = mmal_port_disable(connection->in);
   if(status)
   {
      LOG_ERROR("input port couldn't be disabled");
      goto done;
   }


   status = mmal_port_disable(connection->out);
   if(status)
   {
      LOG_ERROR("output port couldn't be disabled");
      goto done;
   }


   buffer = mmal_queue_get(connection->queue);
   while (buffer)
   {
      mmal_buffer_header_release(buffer);
      buffer = mmal_queue_get(connection->queue);
   }
   vcos_assert(mmal_queue_length(connection->pool->queue) == connection->pool->headers_num);

 done:
   connection->time_disable = vcos_getmicrosecs() - connection->time_disable;
   connection->is_enabled = !(status == MMAL_SUCCESS);
   return status;
}
