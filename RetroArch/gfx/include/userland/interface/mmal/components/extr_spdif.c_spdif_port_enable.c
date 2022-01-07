
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; TYPE_1__* priv; } ;
struct TYPE_5__ {int (* pf_set_format ) (TYPE_2__*) ;} ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef int MMAL_PORT_BH_CB_T ;


 int MMAL_PARAM_UNUSED (int ) ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 int MMAL_SUCCESS ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static MMAL_STATUS_T spdif_port_enable(MMAL_PORT_T *port, MMAL_PORT_BH_CB_T cb)
{
   MMAL_PARAM_UNUSED(cb);



   if (port->type == MMAL_PORT_TYPE_INPUT)
      return port->priv->pf_set_format(port);

   return MMAL_SUCCESS;
}
