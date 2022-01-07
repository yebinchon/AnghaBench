
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_13__ {unsigned int output_num; TYPE_4__* priv; TYPE_2__** output; TYPE_1__** input; } ;
struct TYPE_12__ {scalar_t__ type; int index; TYPE_6__* component; scalar_t__ buffer_size; } ;
struct TYPE_11__ {TYPE_3__* module; } ;
struct TYPE_10__ {int enabled_flags; } ;
struct TYPE_9__ {void* buffer_size; void* buffer_num; } ;
struct TYPE_8__ {void* buffer_size; void* buffer_num; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_5__ MMAL_PORT_T ;
typedef int MMAL_PORT_BH_CB_T ;
typedef TYPE_6__ MMAL_COMPONENT_T ;


 void* MMAL_MAX (void*,void*) ;
 int MMAL_PARAM_UNUSED (int ) ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 int MMAL_SUCCESS ;

__attribute__((used)) static MMAL_STATUS_T splitter_port_enable(MMAL_PORT_T *port, MMAL_PORT_BH_CB_T cb)
{
   MMAL_PARAM_UNUSED(cb);
   if (port->buffer_size)
   if (port->type == MMAL_PORT_TYPE_OUTPUT)
      port->component->priv->module->enabled_flags |= (1<<port->index);
   return MMAL_SUCCESS;
}
