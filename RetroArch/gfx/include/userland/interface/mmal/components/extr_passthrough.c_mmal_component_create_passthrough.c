
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_19__ {unsigned int input_num; unsigned int output_num; TYPE_7__** output; TYPE_4__** input; TYPE_1__* priv; } ;
struct TYPE_18__ {int buffer_num_min; TYPE_6__* priv; int capabilities; scalar_t__ buffer_num_recommended; } ;
struct TYPE_17__ {TYPE_5__* module; void* pf_parameter_set; void* pf_set_format; void* pf_send; void* pf_flush; void* pf_disable; void* pf_enable; } ;
struct TYPE_16__ {void* queue; } ;
struct TYPE_15__ {int buffer_num_min; TYPE_3__* priv; scalar_t__ buffer_num_recommended; } ;
struct TYPE_14__ {TYPE_2__* module; void* pf_parameter_set; void* pf_set_format; void* pf_send; void* pf_flush; void* pf_disable; void* pf_enable; } ;
struct TYPE_13__ {void* queue; } ;
struct TYPE_12__ {int (* pf_destroy ) (TYPE_8__*) ;int * module; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_MODULE_T ;
typedef TYPE_8__ MMAL_COMPONENT_T ;
typedef int MMAL_COMPONENT_MODULE_T ;


 int MMAL_ENOMEM ;
 int MMAL_PARAM_UNUSED (char const*) ;
 int MMAL_PORT_CAPABILITY_PASSTHROUGH ;
 int MMAL_PORT_TYPE_INPUT ;
 int MMAL_PORT_TYPE_OUTPUT ;
 int MMAL_SUCCESS ;
 void* PASSTHROUGH_PORTS_NUM ;
 int memset (int *,int ,int) ;
 void* mmal_ports_alloc (TYPE_8__*,void*,int ,int) ;
 void* mmal_queue_create () ;
 int passthrough_component_destroy (TYPE_8__*) ;
 void* passthrough_port_disable ;
 void* passthrough_port_enable ;
 void* passthrough_port_flush ;
 void* passthrough_port_format_commit ;
 void* passthrough_port_parameter_set ;
 void* passthrough_port_send ;
 int * vcos_malloc (int,char*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_create_passthrough(const char *name, MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module;
   MMAL_STATUS_T status = MMAL_ENOMEM;
   unsigned int i;
   MMAL_PARAM_UNUSED(name);


   component->priv->module = module = vcos_malloc(sizeof(*module), "mmal module");
   if (!module)
      return MMAL_ENOMEM;
   memset(module, 0, sizeof(*module));

   component->priv->pf_destroy = passthrough_component_destroy;


   component->input = mmal_ports_alloc(component, PASSTHROUGH_PORTS_NUM,
                                       MMAL_PORT_TYPE_INPUT, sizeof(MMAL_PORT_MODULE_T));
   if(!component->input)
      goto error;
   component->input_num = PASSTHROUGH_PORTS_NUM;
   for(i = 0; i < component->input_num; i++)
   {
      component->input[i]->priv->pf_enable = passthrough_port_enable;
      component->input[i]->priv->pf_disable = passthrough_port_disable;
      component->input[i]->priv->pf_flush = passthrough_port_flush;
      component->input[i]->priv->pf_send = passthrough_port_send;
      component->input[i]->priv->pf_set_format = passthrough_port_format_commit;
      component->input[i]->priv->pf_parameter_set = passthrough_port_parameter_set;
      component->input[i]->buffer_num_min = 1;
      component->input[i]->buffer_num_recommended = 0;
      component->input[i]->priv->module->queue = mmal_queue_create();
      if(!component->input[i]->priv->module->queue)
         goto error;
   }

   component->output = mmal_ports_alloc(component, PASSTHROUGH_PORTS_NUM,
                                        MMAL_PORT_TYPE_OUTPUT, sizeof(MMAL_PORT_MODULE_T));
   if(!component->output)
      goto error;
   component->output_num = PASSTHROUGH_PORTS_NUM;
   for(i = 0; i < component->output_num; i++)
   {
      component->output[i]->priv->pf_enable = passthrough_port_enable;
      component->output[i]->priv->pf_disable = passthrough_port_disable;
      component->output[i]->priv->pf_flush = passthrough_port_flush;
      component->output[i]->priv->pf_send = passthrough_port_send;
      component->output[i]->priv->pf_set_format = passthrough_port_format_commit;
      component->output[i]->priv->pf_parameter_set = passthrough_port_parameter_set;
      component->output[i]->buffer_num_min = 1;
      component->output[i]->buffer_num_recommended = 0;
      component->output[i]->capabilities = MMAL_PORT_CAPABILITY_PASSTHROUGH;
      component->output[i]->priv->module->queue = mmal_queue_create();
      if(!component->output[i]->priv->module->queue)
         goto error;
   }

   return MMAL_SUCCESS;

 error:
   passthrough_component_destroy(component);
   return status;
}
