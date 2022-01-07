
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_PARAMETER_HEADER_T ;


 int MMAL_ENOSYS ;

 int mmal_port_get_core_stats (int *,TYPE_1__*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_private_parameter_get(MMAL_PORT_T *port,
                                                     MMAL_PARAMETER_HEADER_T *param)
{
   switch (param->id)
   {
   case 128:
      return mmal_port_get_core_stats(port, param);
   default:
      return MMAL_ENOSYS;
   }
}
