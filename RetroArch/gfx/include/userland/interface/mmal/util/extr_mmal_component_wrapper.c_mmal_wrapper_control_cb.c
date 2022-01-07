
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int (* callback ) (TYPE_4__*) ;int status; } ;
struct TYPE_12__ {scalar_t__ cmd; scalar_t__ data; } ;
struct TYPE_11__ {int name; scalar_t__ userdata; } ;
struct TYPE_10__ {TYPE_4__ wrapper; int sema; } ;
typedef TYPE_1__ MMAL_WRAPPER_PRIVATE_T ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,int ,TYPE_2__*,TYPE_3__*,char*) ;
 scalar_t__ MMAL_EVENT_ERROR ;
 int mmal_buffer_header_release (TYPE_3__*) ;
 int stub1 (TYPE_4__*) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void mmal_wrapper_control_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_WRAPPER_PRIVATE_T *private = (MMAL_WRAPPER_PRIVATE_T *)port->userdata;
   LOG_TRACE("%s(%p),%p,%4.4s", port->name, port, buffer, (char *)&buffer->cmd);

   if (buffer->cmd == MMAL_EVENT_ERROR)
   {
      private->wrapper.status = *(MMAL_STATUS_T *)buffer->data;
      mmal_buffer_header_release(buffer);

      vcos_semaphore_post(&private->sema);

      if (private->wrapper.callback)
         private->wrapper.callback(&private->wrapper);
      return;
   }

   mmal_buffer_header_release(buffer);
}
