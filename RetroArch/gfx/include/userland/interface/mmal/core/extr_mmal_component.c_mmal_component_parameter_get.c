
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_PARAMETER_HEADER_T ;


 int LOG_ERROR (char*,int ) ;
 int MMAL_ENOSYS ;

MMAL_STATUS_T mmal_component_parameter_get(MMAL_PORT_T *control_port,
                                           MMAL_PARAMETER_HEADER_T *param)
{
   (void)control_port;
   (void)param;

   LOG_ERROR("parameter id 0x%08x not supported", param->id);
   return MMAL_ENOSYS;
}
