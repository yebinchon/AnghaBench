
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef int MMAL_PORT_BH_CB_T ;


 int MMAL_SUCCESS ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_enable_control_port(MMAL_PORT_T *port, MMAL_PORT_BH_CB_T cb)
{
   (void)port;
   (void)cb;
   return MMAL_SUCCESS;
}
