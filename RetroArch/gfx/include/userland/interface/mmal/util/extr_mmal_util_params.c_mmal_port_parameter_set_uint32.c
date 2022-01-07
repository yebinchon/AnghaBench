
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int param ;
struct TYPE_3__ {int member_1; int member_0; } ;
struct TYPE_4__ {int hdr; int member_1; TYPE_1__ member_0; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_2__ MMAL_PARAMETER_UINT32_T ;


 int mmal_port_parameter_set (int *,int *) ;

MMAL_STATUS_T mmal_port_parameter_set_uint32(MMAL_PORT_T *port, uint32_t id, uint32_t value)
{
   MMAL_PARAMETER_UINT32_T param = {{id, sizeof(param)}, value};
   return mmal_port_parameter_set(port, &param.hdr);
}
