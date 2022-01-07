
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int flags; scalar_t__ length; } ;
struct TYPE_10__ {int queue_out; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* module; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_MODULE_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int MMAL_BUFFER_HEADER_FLAG_EOS ;
 int MMAL_EAGAIN ;
 int MMAL_SUCCESS ;
 int mmal_port_buffer_header_callback (int *,TYPE_4__*) ;
 TYPE_4__* mmal_queue_get (int ) ;

__attribute__((used)) static MMAL_STATUS_T avcodec_send_eos(MMAL_COMPONENT_T *component, MMAL_PORT_T *port)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *out = mmal_queue_get(module->queue_out);

   if (!out)
      return MMAL_EAGAIN;

   out->length = 0;
   out->flags = MMAL_BUFFER_HEADER_FLAG_EOS;
   mmal_port_buffer_header_callback(port, out);
   return MMAL_SUCCESS;
}
