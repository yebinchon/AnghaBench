
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ length; int data; } ;
struct TYPE_9__ {int name; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,int ,TYPE_1__*,TYPE_2__*,int ,int) ;
 int MMAL_PARAM_UNUSED (TYPE_1__*) ;
 int mmal_buffer_header_release (TYPE_2__*) ;

__attribute__((used)) static void mmal_wrapper_bh_in_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_PARAM_UNUSED(port);
   LOG_TRACE("(%s)%p,%p,%p,%i", port->name, port, buffer, buffer->data, (int)buffer->length);


   mmal_buffer_header_release(buffer);
}
