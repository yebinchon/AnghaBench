
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int reply ;
typedef int msg ;
struct TYPE_10__ {scalar_t__ status; } ;
typedef TYPE_3__ mmal_worker_reply ;
struct TYPE_11__ {int header; int component_handle; } ;
typedef TYPE_4__ mmal_worker_component_enable ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_9__ {TYPE_1__* module; } ;
struct TYPE_8__ {int component_handle; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_5__ MMAL_COMPONENT_T ;


 int LOG_ERROR (char*,int ) ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_COMPONENT_ENABLE ;
 int mmal_status_to_string (scalar_t__) ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_3__*,size_t*,int ) ;
 int vcos_assert (int) ;

__attribute__((used)) static MMAL_STATUS_T mmal_vc_component_enable(MMAL_COMPONENT_T *component)
{
   MMAL_STATUS_T status;
   mmal_worker_reply reply;
   mmal_worker_component_enable msg;
   size_t replylen = sizeof(reply);

   vcos_assert(component && component->priv && component->priv->module);

   msg.component_handle = component->priv->module->component_handle;

   status = mmal_vc_sendwait_message(mmal_vc_get_client(), &msg.header, sizeof(msg),
                                     MMAL_WORKER_COMPONENT_ENABLE, &reply, &replylen, MMAL_FALSE);

   if (status == MMAL_SUCCESS)
   {
      vcos_assert(replylen == sizeof(reply));
      status = reply.status;
   }

   if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
   {
      LOG_ERROR("failed to enable component: %s", mmal_status_to_string(status));
      return status;
   }

   return MMAL_SUCCESS;
}
