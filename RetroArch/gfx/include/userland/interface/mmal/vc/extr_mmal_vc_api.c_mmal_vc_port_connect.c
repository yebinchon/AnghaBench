
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int reply ;
typedef int msg ;
struct TYPE_14__ {scalar_t__ status; } ;
typedef TYPE_4__ mmal_worker_reply ;
struct TYPE_11__ {int port_handle; int component_handle; } ;
struct TYPE_12__ {TYPE_1__ connect; } ;
struct TYPE_15__ {int header; TYPE_2__ param; int port_handle; int action; int component_handle; } ;
typedef TYPE_5__ mmal_worker_port_action ;
struct TYPE_17__ {TYPE_6__* connected; int port_handle; int component_handle; } ;
struct TYPE_16__ {TYPE_3__* priv; } ;
struct TYPE_13__ {scalar_t__ pf_enable; TYPE_7__* module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_6__ MMAL_PORT_T ;
typedef TYPE_7__ MMAL_PORT_MODULE_T ;


 int LOG_ERROR (char*,int ) ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_PORT_ACTION ;
 int MMAL_WORKER_PORT_ACTION_CONNECT ;
 int MMAL_WORKER_PORT_ACTION_DISCONNECT ;
 int mmal_status_to_string (scalar_t__) ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_4__*,size_t*,int ) ;
 int vcos_assert (int) ;

__attribute__((used)) static MMAL_STATUS_T mmal_vc_port_connect(MMAL_PORT_T *port, MMAL_PORT_T *other_port)
{
   MMAL_PORT_MODULE_T *module = port->priv->module;
   MMAL_STATUS_T status;
   mmal_worker_reply reply;
   mmal_worker_port_action msg;
   size_t replylen = sizeof(reply);


   if (other_port && port->priv->pf_enable != other_port->priv->pf_enable)
      return MMAL_ENOSYS;


   msg.component_handle = module->component_handle;
   msg.action = other_port ? MMAL_WORKER_PORT_ACTION_CONNECT : MMAL_WORKER_PORT_ACTION_DISCONNECT;
   msg.port_handle = module->port_handle;
   if (other_port)
   {
      msg.param.connect.component_handle = other_port->priv->module->component_handle;
      msg.param.connect.port_handle = other_port->priv->module->port_handle;
   }

   status = mmal_vc_sendwait_message(mmal_vc_get_client(), &msg.header, sizeof(msg),
                                     MMAL_WORKER_PORT_ACTION, &reply, &replylen, MMAL_FALSE);
   if (status == MMAL_SUCCESS)
   {
      vcos_assert(replylen == sizeof(reply));
      status = reply.status;
   }

   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("failed to connect ports: %s", mmal_status_to_string(status));
      return status;
   }

   if (other_port)
   {

      module->connected = other_port;
      other_port->priv->module->connected = port;
   }
   else
   {

      if (module->connected)
         module->connected->priv->module->connected = ((void*)0);
      module->connected = ((void*)0);
   }

   return MMAL_SUCCESS;
}
