
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {scalar_t__ headers_num; int queue; } ;
struct TYPE_10__ {scalar_t__ type; size_t index; int is_enabled; int name; scalar_t__ userdata; } ;
struct TYPE_8__ {scalar_t__ time_disable; int ** output_queue; TYPE_4__** output_pool; } ;
struct TYPE_9__ {TYPE_1__ wrapper; } ;
typedef TYPE_1__ MMAL_WRAPPER_T ;
typedef TYPE_2__ MMAL_WRAPPER_PRIVATE_T ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_QUEUE_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_POOL_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*) ;
 int LOG_TRACE (char*,TYPE_1__*,int ) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_buffer_header_release (int *) ;
 scalar_t__ mmal_port_disable (TYPE_3__*) ;
 int * mmal_queue_get (int *) ;
 scalar_t__ mmal_queue_length (int ) ;
 scalar_t__ vcos_getmicrosecs () ;
 int vcos_verify (int) ;

MMAL_STATUS_T mmal_wrapper_port_disable(MMAL_PORT_T *port)
{
   MMAL_WRAPPER_PRIVATE_T *private = (MMAL_WRAPPER_PRIVATE_T *)port->userdata;
   MMAL_WRAPPER_T *wrapper = &private->wrapper;
   int64_t start_time = vcos_getmicrosecs();
   MMAL_STATUS_T status;

   LOG_TRACE("%p, %s", wrapper, port->name);

   if (port->type != MMAL_PORT_TYPE_INPUT && port->type != MMAL_PORT_TYPE_OUTPUT)
      return MMAL_EINVAL;

   if (!port->is_enabled)
      return MMAL_SUCCESS;


   status = mmal_port_disable(port);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("could not disable port");
      return status;
   }


   if (port->type == MMAL_PORT_TYPE_OUTPUT)
   {
      MMAL_POOL_T *pool = wrapper->output_pool[port->index];
      MMAL_QUEUE_T *queue = wrapper->output_queue[port->index];
      MMAL_BUFFER_HEADER_T *buffer;

      while ((buffer = mmal_queue_get(queue)) != ((void*)0))
         mmal_buffer_header_release(buffer);

      if ( !vcos_verify(mmal_queue_length(pool->queue) == pool->headers_num) )
      {
         LOG_ERROR("coul dnot release all buffers");
      }
   }

   wrapper->time_disable = vcos_getmicrosecs() - start_time;
   return status;
}
