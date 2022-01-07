
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ userdata; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_BUFFER_HEADER_T ;
typedef int MMALOMX_PORT_T ;


 int mmalomx_buffer_return (int *,int *) ;

__attribute__((used)) static void mmalomx_buffer_cb_io(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   mmalomx_buffer_return((MMALOMX_PORT_T *)port->userdata, buffer);
}
