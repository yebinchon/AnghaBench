
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__** input; } ;
struct TYPE_9__ {TYPE_4__* component; TYPE_2__* priv; int format; } ;
struct TYPE_8__ {TYPE_1__* module; } ;
struct TYPE_7__ {scalar_t__ needs_configuring; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int mmal_component_action_trigger (TYPE_4__*) ;
 scalar_t__ mmal_format_compare (int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T copy_output_port_format_commit(MMAL_PORT_T *out)
{
   MMAL_COMPONENT_T *component = out->component;
   MMAL_PORT_T *in = component->input[0];


   if (mmal_format_compare(out->format, in->format))
      return MMAL_EINVAL;

   out->priv->module->needs_configuring = 0;
   mmal_component_action_trigger(out->component);
   return MMAL_SUCCESS;
}
