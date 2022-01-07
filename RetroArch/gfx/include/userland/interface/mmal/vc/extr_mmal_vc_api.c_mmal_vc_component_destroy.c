
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
struct TYPE_9__ {scalar_t__ status; } ;
typedef TYPE_2__ mmal_worker_reply ;
struct TYPE_10__ {int header; int component_handle; } ;
typedef TYPE_3__ mmal_worker_component_destroy ;
struct TYPE_12__ {int callback_queue; int component_handle; } ;
struct TYPE_11__ {TYPE_1__* priv; scalar_t__ clock_num; int clock; scalar_t__ output_num; int output; scalar_t__ input_num; int input; } ;
struct TYPE_8__ {TYPE_5__* module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;


 int LOG_ERROR (char*,scalar_t__) ;
 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_COMPONENT_DESTROY ;
 int mmal_ports_free (int ,scalar_t__) ;
 int mmal_queue_destroy (int ) ;
 int mmal_vc_deinit () ;
 int mmal_vc_get_client () ;
 int mmal_vc_release () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_2__*,size_t*,int ) ;
 int vcos_assert (int) ;
 int vcos_free (TYPE_5__*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_vc_component_destroy(MMAL_COMPONENT_T *component)
{
   MMAL_STATUS_T status;
   mmal_worker_component_destroy msg;
   mmal_worker_reply reply;
   size_t replylen = sizeof(reply);

   vcos_assert(component && component->priv && component->priv->module);

   msg.component_handle = component->priv->module->component_handle;

   status = mmal_vc_sendwait_message(mmal_vc_get_client(), &msg.header, sizeof(msg),
         MMAL_WORKER_COMPONENT_DESTROY,
         &reply, &replylen, MMAL_FALSE);

   if (status == MMAL_SUCCESS)
   {
      vcos_assert(replylen == sizeof(reply));
      status = reply.status;
   }
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("failed to destroy component - reason %d", status );
      goto fail;
   }

   if(component->input_num)
      mmal_ports_free(component->input, component->input_num);
   if(component->output_num)
      mmal_ports_free(component->output, component->output_num);
   if(component->clock_num)
      mmal_ports_free(component->clock, component->clock_num);

   mmal_queue_destroy(component->priv->module->callback_queue);

   vcos_free(component->priv->module);
   component->priv->module = ((void*)0);

fail:

   mmal_vc_release();
   mmal_vc_deinit();
   return status;
}
