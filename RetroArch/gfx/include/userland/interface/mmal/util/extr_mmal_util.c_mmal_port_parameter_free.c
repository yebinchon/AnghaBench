
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PARAMETER_HEADER_T ;


 int vcos_free (int *) ;

void mmal_port_parameter_free(MMAL_PARAMETER_HEADER_T *param)
{
   vcos_free(param);
}
