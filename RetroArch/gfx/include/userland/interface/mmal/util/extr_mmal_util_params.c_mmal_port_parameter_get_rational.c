
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int param ;
struct TYPE_5__ {int member_1; int member_0; } ;
struct TYPE_4__ {int member_1; int member_0; } ;
struct TYPE_6__ {int value; int hdr; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_RATIONAL_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PARAMETER_RATIONAL_T ;


 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_parameter_get (int *,int *) ;

MMAL_STATUS_T mmal_port_parameter_get_rational(MMAL_PORT_T *port, uint32_t id, MMAL_RATIONAL_T *value)
{
   MMAL_PARAMETER_RATIONAL_T param = {{id, sizeof(param)}, {0,0}};

   MMAL_STATUS_T status = mmal_port_parameter_get(port, &param.hdr);
   if (status == MMAL_SUCCESS)
      *value = param.value;
   return status;
}
