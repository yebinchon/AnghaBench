
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int param ;
typedef int int64_t ;
struct TYPE_3__ {int member_1; int member_0; } ;
struct TYPE_4__ {long long member_1; int value; int hdr; TYPE_1__ member_0; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_2__ MMAL_PARAMETER_INT64_T ;


 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_parameter_get (int *,int *) ;

MMAL_STATUS_T mmal_port_parameter_get_int64(MMAL_PORT_T *port, uint32_t id, int64_t *value)
{
   MMAL_PARAMETER_INT64_T param = {{id, sizeof(param)}, 0LL};

   MMAL_STATUS_T status = mmal_port_parameter_get(port, &param.hdr);
   if (status == MMAL_SUCCESS)
      *value = param.value;
   return status;
}
