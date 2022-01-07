
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct CONTEXT_T {int semaphore; int queue; } ;
struct TYPE_3__ {scalar_t__ userdata; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int mmal_queue_put (int ,int *) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void output_callback(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   struct CONTEXT_T *ctx = (struct CONTEXT_T *)port->userdata;


   mmal_queue_put(ctx->queue, buffer);


   vcos_semaphore_post(&ctx->semaphore);
}
