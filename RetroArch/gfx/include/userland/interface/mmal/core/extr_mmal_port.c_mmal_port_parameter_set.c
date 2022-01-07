
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ size; int id; } ;
struct TYPE_17__ {TYPE_2__* priv; scalar_t__ index; scalar_t__ type; TYPE_1__* component; } ;
struct TYPE_16__ {scalar_t__ (* pf_parameter_set ) (TYPE_3__*,TYPE_4__ const*) ;} ;
struct TYPE_15__ {int name; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PARAMETER_HEADER_T ;


 int LOCK_PORT (TYPE_3__*) ;
 int LOG_ERROR (char*) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_3__*,TYPE_4__ const*,int ,int) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENOSYS ;
 int UNLOCK_PORT (TYPE_3__*) ;
 scalar_t__ mmal_port_private_parameter_set (TYPE_3__*,TYPE_4__ const*) ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_4__ const*) ;

MMAL_STATUS_T mmal_port_parameter_set(MMAL_PORT_T *port,
   const MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_STATUS_T status = MMAL_ENOSYS;

   if (!port)
   {
      LOG_ERROR("no port");
      return MMAL_EINVAL;
   }
   if (!param)
   {
      LOG_ERROR("param not supplied");
      return MMAL_EINVAL;
   }
   if (!port->priv)
   {
      LOG_ERROR("port not configured");
      return MMAL_EINVAL;
   }

   LOG_TRACE("%s(%i:%i) port %p, param %p (%x,%i)", port->component->name,
             (int)port->type, (int)port->index, port,
             param, param ? param->id : 0, param ? (int)param->size : 0);

   LOCK_PORT(port);
   if (port->priv->pf_parameter_set)
      status = port->priv->pf_parameter_set(port, param);
   if (status == MMAL_ENOSYS)
   {

      status = mmal_port_private_parameter_set(port, param);
   }
   UNLOCK_PORT(port);
   return status;
}
