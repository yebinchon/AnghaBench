
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int reply ;
typedef int msg ;
struct TYPE_13__ {scalar_t__ status; } ;
typedef TYPE_4__ mmal_worker_reply ;
struct TYPE_15__ {int buffer_size_min; int buffer_size; int buffer_num_min; int buffer_num; TYPE_1__* priv; } ;
struct TYPE_11__ {TYPE_6__ port; } ;
struct TYPE_12__ {TYPE_2__ enable; } ;
struct TYPE_14__ {int header; TYPE_3__ param; int port_handle; int action; int component_handle; } ;
typedef TYPE_5__ mmal_worker_port_action ;
struct TYPE_16__ {int port_handle; int component_handle; } ;
struct TYPE_10__ {TYPE_7__* module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_6__ MMAL_PORT_T ;
typedef TYPE_7__ MMAL_PORT_MODULE_T ;


 int LOG_ERROR (char*,int ,int ,int ,int ) ;
 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_PORT_ACTION ;
 int MMAL_WORKER_PORT_ACTION_SET_REQUIREMENTS ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_4__*,size_t*,int ) ;
 int vcos_assert (int) ;

__attribute__((used)) static MMAL_STATUS_T mmal_vc_port_requirements_set(MMAL_PORT_T *port)
{
   MMAL_PORT_MODULE_T *module = port->priv->module;
   MMAL_STATUS_T status;
   mmal_worker_reply reply;
   mmal_worker_port_action msg;
   size_t replylen = sizeof(reply);

   msg.component_handle = module->component_handle;
   msg.action = MMAL_WORKER_PORT_ACTION_SET_REQUIREMENTS;
   msg.port_handle = module->port_handle;
   msg.param.enable.port = *port;

   status = mmal_vc_sendwait_message(mmal_vc_get_client(), &msg.header, sizeof(msg),
                                     MMAL_WORKER_PORT_ACTION, &reply, &replylen, MMAL_FALSE);
   if (status == MMAL_SUCCESS)
   {
      vcos_assert(replylen == sizeof(reply));
      status = reply.status;
   }
   if (status != MMAL_SUCCESS)
      LOG_ERROR("failed to set port requirements (%i/%i,%i/%i)",
                port->buffer_num, port->buffer_num_min,
                port->buffer_size, port->buffer_size_min);

   return status;
}
