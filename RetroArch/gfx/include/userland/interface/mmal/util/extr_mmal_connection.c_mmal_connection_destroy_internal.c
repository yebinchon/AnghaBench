
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ queue; scalar_t__ pool; int name; int out; scalar_t__ is_enabled; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_CONNECTION_T ;


 int LOG_ERROR (char*,int ) ;
 int MMAL_CONNECTION_FLAG_TUNNELLING ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_connection_disable (TYPE_1__*) ;
 int mmal_pool_destroy (scalar_t__) ;
 scalar_t__ mmal_port_disconnect (int ) ;
 int mmal_queue_destroy (scalar_t__) ;
 int vcos_free (TYPE_1__*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_connection_destroy_internal(MMAL_CONNECTION_T *connection)
{
   MMAL_STATUS_T status;

   if (connection->is_enabled)
   {
      status = mmal_connection_disable(connection);
      if (status != MMAL_SUCCESS)
         return status;
   }


   if (connection->flags & MMAL_CONNECTION_FLAG_TUNNELLING)
   {
      status = mmal_port_disconnect(connection->out);
      if (status != MMAL_SUCCESS)
         LOG_ERROR("connection %s could not be cleared", connection->name);
   }


   if (connection->pool)
      mmal_pool_destroy(connection->pool);
   if (connection->queue)
      mmal_queue_destroy(connection->queue);

   vcos_free(connection);
   return MMAL_SUCCESS;
}
