
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct MMAL_PORT_USERDATA_T {int dummy; } ;
struct TYPE_4__ {struct MMAL_PORT_USERDATA_T* userdata; } ;
typedef int SVP_T ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_PORT_BH_CB_T ;


 int mmal_port_enable (TYPE_1__*,int ) ;

__attribute__((used)) static MMAL_STATUS_T svp_port_enable(SVP_T *svp, MMAL_PORT_T *port, MMAL_PORT_BH_CB_T cb)
{
   port->userdata = (struct MMAL_PORT_USERDATA_T *)svp;
   return mmal_port_enable(port, cb);
}
