
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_10__ {int * pool_for_connection; int core_owns_connection; } ;
struct TYPE_9__ {scalar_t__ type; int capabilities; TYPE_1__* priv; void* buffer_size; void* buffer_num; } ;
struct TYPE_8__ {TYPE_3__* core; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PORT_PRIVATE_CORE_T ;
typedef int MMAL_POOL_T ;


 int LOG_ERROR (char*) ;
 int MMAL_ENOMEM ;
 void* MMAL_MAX (void*,void*) ;
 int MMAL_PORT_CAPABILITY_ALLOCATION ;
 int MMAL_PORT_CAPABILITY_PASSTHROUGH ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 int MMAL_SUCCESS ;
 int mmal_pool_callback_set (int *,int ,TYPE_2__*) ;
 int mmal_port_connected_pool_cb ;
 int * mmal_port_pool_create (TYPE_2__*,void*,void*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_connection_enable(MMAL_PORT_T *port, MMAL_PORT_T *connected_port)
{
   MMAL_PORT_T *output = port->type == MMAL_PORT_TYPE_OUTPUT ? port : connected_port;
   MMAL_PORT_T *input = connected_port->type == MMAL_PORT_TYPE_INPUT ? connected_port : port;
   MMAL_PORT_T *pool_port = (output->capabilities & MMAL_PORT_CAPABILITY_ALLOCATION) ? output : input;
   MMAL_PORT_PRIVATE_CORE_T *pool_core = pool_port->priv->core;
   uint32_t buffer_size, buffer_num;
   MMAL_POOL_T *pool;




   buffer_num = MMAL_MAX(port->buffer_num, connected_port->buffer_num);
   buffer_size = MMAL_MAX(port->buffer_size, connected_port->buffer_size);
   port->buffer_num = connected_port->buffer_num = buffer_num;
   port->buffer_size = connected_port->buffer_size = buffer_size;

   if (output->capabilities & MMAL_PORT_CAPABILITY_PASSTHROUGH)
      buffer_size = 0;

   if (!port->priv->core->core_owns_connection)
      return MMAL_SUCCESS;

   pool = mmal_port_pool_create(pool_port, buffer_num, buffer_size);
   if (!pool)
   {
      LOG_ERROR("failed to create pool for connection");
      return MMAL_ENOMEM;
   }

   pool_core->pool_for_connection = pool;
   mmal_pool_callback_set(pool, mmal_port_connected_pool_cb, output);
   return MMAL_SUCCESS;
}
