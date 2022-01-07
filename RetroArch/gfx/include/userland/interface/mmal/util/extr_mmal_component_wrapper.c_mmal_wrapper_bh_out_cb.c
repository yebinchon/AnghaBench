
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int (* callback ) (TYPE_4__*) ;int * output_queue; } ;
struct TYPE_12__ {scalar_t__ length; int data; } ;
struct TYPE_11__ {size_t index; int name; scalar_t__ userdata; } ;
struct TYPE_10__ {TYPE_4__ wrapper; int sema; } ;
typedef TYPE_1__ MMAL_WRAPPER_PRIVATE_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,int ,TYPE_2__*,TYPE_3__*,int ,int) ;
 int mmal_queue_put (int ,TYPE_3__*) ;
 int stub1 (TYPE_4__*) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void mmal_wrapper_bh_out_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_WRAPPER_PRIVATE_T *private = (MMAL_WRAPPER_PRIVATE_T *)port->userdata;
   LOG_TRACE("(%s)%p,%p,%p,%i", port->name, port, buffer, buffer->data, (int)buffer->length);


   mmal_queue_put(private->wrapper.output_queue[port->index], buffer);
   vcos_semaphore_post(&private->sema);

   if (private->wrapper.callback)
      private->wrapper.callback(&private->wrapper);
}
