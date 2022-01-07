
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int buffer_num_min; int buffer_num_recommended; TYPE_2__* priv; } ;
struct TYPE_10__ {unsigned int input_num; TYPE_5__** input; TYPE_1__* priv; } ;
struct TYPE_9__ {int pf_set_format; int pf_send; int pf_flush; int pf_disable; int pf_enable; } ;
struct TYPE_8__ {int (* pf_destroy ) (TYPE_3__*) ;} ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 int MMAL_ENOMEM ;
 int MMAL_PARAM_UNUSED (char const*) ;
 int MMAL_PORT_TYPE_INPUT ;
 int MMAL_SUCCESS ;
 unsigned int NULLSINK_PORTS_NUM ;
 TYPE_5__** mmal_ports_alloc (TYPE_3__*,unsigned int,int ,int ) ;
 int null_sink_component_destroy (TYPE_3__*) ;
 int null_sink_port_disable ;
 int null_sink_port_enable ;
 int null_sink_port_flush ;
 int null_sink_port_format_commit ;
 int null_sink_port_send ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_create_null_sink(const char *name, MMAL_COMPONENT_T *component)
{
   MMAL_STATUS_T status = MMAL_ENOMEM;
   unsigned int i;
   MMAL_PARAM_UNUSED(name);

   component->priv->pf_destroy = null_sink_component_destroy;


   component->input = mmal_ports_alloc(component, NULLSINK_PORTS_NUM, MMAL_PORT_TYPE_INPUT, 0);
   if(!component->input)
      goto error;
   component->input_num = NULLSINK_PORTS_NUM;

   for(i = 0; i < component->input_num; i++)
   {
      component->input[i]->priv->pf_enable = null_sink_port_enable;
      component->input[i]->priv->pf_disable = null_sink_port_disable;
      component->input[i]->priv->pf_flush = null_sink_port_flush;
      component->input[i]->priv->pf_send = null_sink_port_send;
      component->input[i]->priv->pf_set_format = null_sink_port_format_commit;
      component->input[i]->buffer_num_min = 1;
      component->input[i]->buffer_num_recommended = 1;
   }

   return MMAL_SUCCESS;

 error:
   null_sink_component_destroy(component);
   return status;
}
