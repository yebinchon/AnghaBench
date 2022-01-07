
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int buffer_size_min; int buffer_size; TYPE_1__* priv; int buffer_num_min; int buffer_num; TYPE_2__* format; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {int pf_parameter_get; int pf_parameter_set; int pf_disable; int pf_enable; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_ES_SPECIFIC_FORMAT_T ;
typedef int MMAL_ES_FORMAT_T ;


 int MMAL_CONTROL_PORT_BUFFERS_MIN ;
 int MMAL_ES_TYPE_CONTROL ;
 int mmal_component_disable_control_port ;
 int mmal_component_enable_control_port ;
 int mmal_component_parameter_get ;
 int mmal_component_parameter_set ;

__attribute__((used)) static void mmal_component_init_control_port(MMAL_PORT_T *port)
{
   port->format->type = MMAL_ES_TYPE_CONTROL;
   port->buffer_num_min = MMAL_CONTROL_PORT_BUFFERS_MIN;
   port->buffer_num = port->buffer_num_min;
   port->buffer_size_min = sizeof(MMAL_ES_FORMAT_T) + sizeof(MMAL_ES_SPECIFIC_FORMAT_T);
   port->buffer_size = port->buffer_size_min;


   port->priv->pf_enable = mmal_component_enable_control_port;
   port->priv->pf_disable = mmal_component_disable_control_port;
   port->priv->pf_parameter_set = mmal_component_parameter_set;
   port->priv->pf_parameter_get = mmal_component_parameter_get;


}
