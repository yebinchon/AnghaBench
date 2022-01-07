
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int param ;
struct TYPE_7__ {int member_1; int member_0; } ;
struct TYPE_6__ {int member_1; int member_0; } ;
struct TYPE_9__ {int hdr; TYPE_2__ member_1; TYPE_1__ member_0; } ;
struct TYPE_8__ {int den; int num; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_RATIONAL_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PARAMETER_RATIONAL_T ;


 int mmal_port_parameter_set (int *,int *) ;

MMAL_STATUS_T mmal_port_parameter_set_rational(MMAL_PORT_T *port, uint32_t id, MMAL_RATIONAL_T value)
{
   MMAL_PARAMETER_RATIONAL_T param = {{id, sizeof(param)}, {value.num, value.den}};
   return mmal_port_parameter_set(port, &param.hdr);
}
