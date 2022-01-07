
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_PARAMETER_HEADER_T ;


 int MMAL_ENOSYS ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_private_parameter_set(MMAL_PORT_T *port,
                                                     const MMAL_PARAMETER_HEADER_T *param)
{
   (void)port;
   switch (param->id)
   {
   default:
      return MMAL_ENOSYS;
   }
}
