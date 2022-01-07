
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ size; int id; } ;
struct TYPE_17__ {TYPE_1__* priv; scalar_t__ index; scalar_t__ type; TYPE_2__* component; } ;
struct TYPE_16__ {int name; } ;
struct TYPE_15__ {scalar_t__ (* pf_parameter_get ) (TYPE_3__*,TYPE_4__*) ;} ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PARAMETER_HEADER_T ;


 int LOCK_PORT (TYPE_3__*) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_3__*,TYPE_4__*,int ,int) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENOSYS ;
 int UNLOCK_PORT (TYPE_3__*) ;
 scalar_t__ mmal_port_private_parameter_get (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_4__*) ;

MMAL_STATUS_T mmal_port_parameter_get(MMAL_PORT_T *port,
   MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_STATUS_T status = MMAL_ENOSYS;

   if (!port || !port->priv)
      return MMAL_EINVAL;

   LOG_TRACE("%s(%i:%i) port %p, param %p (%x,%i)", port->component->name,
             (int)port->type, (int)port->index, port,
             param, param ? param->id : 0, param ? (int)param->size : 0);

   if (!param)
      return MMAL_EINVAL;

   LOCK_PORT(port);
   if (port->priv->pf_parameter_get)
      status = port->priv->pf_parameter_get(port, param);
   if (status == MMAL_ENOSYS)
   {

      status = mmal_port_private_parameter_get(port, param);
   }

   UNLOCK_PORT(port);
   return status;
}
