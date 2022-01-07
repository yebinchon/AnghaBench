
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;


 int MMAL_PARAMETER_URI ;
 int mmal_port_parameter_set_string (int *,int ,char const*) ;

MMAL_STATUS_T mmal_util_port_set_uri(MMAL_PORT_T *port, const char *uri)
{
   return mmal_port_parameter_set_string(port, MMAL_PARAMETER_URI, uri);
}
