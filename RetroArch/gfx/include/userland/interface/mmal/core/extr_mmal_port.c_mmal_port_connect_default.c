
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;


 int LOG_TRACE (char*,int *,int *) ;
 int MMAL_ENOSYS ;
 int MMAL_PARAM_UNUSED (int *) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_connect_default(MMAL_PORT_T *port, MMAL_PORT_T *other_port)
{
   MMAL_PARAM_UNUSED(port);
   MMAL_PARAM_UNUSED(other_port);

   LOG_TRACE("port %p, other_port %p", port, other_port);
   return MMAL_ENOSYS;
}
