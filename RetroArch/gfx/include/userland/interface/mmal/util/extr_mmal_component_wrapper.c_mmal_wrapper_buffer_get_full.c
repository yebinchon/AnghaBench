
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {scalar_t__ type; size_t index; int name; scalar_t__ userdata; } ;
struct TYPE_6__ {scalar_t__ status; int ** output_queue; } ;
struct TYPE_7__ {int sema; TYPE_1__ wrapper; } ;
typedef TYPE_1__ MMAL_WRAPPER_T ;
typedef TYPE_2__ MMAL_WRAPPER_PRIVATE_T ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_QUEUE_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,TYPE_1__*,int ) ;
 scalar_t__ MMAL_EAGAIN ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WRAPPER_FLAG_WAIT ;
 int * mmal_queue_get (int *) ;
 int vcos_semaphore_wait (int *) ;

MMAL_STATUS_T mmal_wrapper_buffer_get_full(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T **buffer,
   uint32_t flags)
{
   MMAL_WRAPPER_PRIVATE_T *private = (MMAL_WRAPPER_PRIVATE_T *)port->userdata;
   MMAL_WRAPPER_T *wrapper = &private->wrapper;
   MMAL_QUEUE_T *queue;

   LOG_TRACE("%p, %s", wrapper, port->name);

   if (!buffer || port->type != MMAL_PORT_TYPE_OUTPUT)
      return MMAL_EINVAL;
   queue = wrapper->output_queue[port->index];

   while (wrapper->status == MMAL_SUCCESS &&
          (*buffer = mmal_queue_get(queue)) == ((void*)0))
   {
      if (!(flags & MMAL_WRAPPER_FLAG_WAIT))
         break;
      vcos_semaphore_wait(&private->sema);
   }

   return wrapper->status == MMAL_SUCCESS && !*buffer ? MMAL_EAGAIN : wrapper->status;
}
