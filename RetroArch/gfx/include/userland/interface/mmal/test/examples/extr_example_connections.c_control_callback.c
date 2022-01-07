
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct CONTEXT_T {int semaphore; int eos; int status; } ;
struct TYPE_7__ {scalar_t__ cmd; scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ userdata; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 scalar_t__ MMAL_EVENT_EOS ;
 scalar_t__ MMAL_EVENT_ERROR ;
 int MMAL_TRUE ;
 int mmal_buffer_header_release (TYPE_2__*) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void control_callback(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   struct CONTEXT_T *ctx = (struct CONTEXT_T *)port->userdata;

   if (buffer->cmd == MMAL_EVENT_ERROR)
      ctx->status = *(MMAL_STATUS_T *)buffer->data;
   else if (buffer->cmd == MMAL_EVENT_EOS)
      ctx->eos = MMAL_TRUE;

   mmal_buffer_header_release(buffer);


   vcos_semaphore_post(&ctx->semaphore);
}
