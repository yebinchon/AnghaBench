
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_20__ {int input_num; int output_num; TYPE_7__** output; TYPE_4__** input; TYPE_1__* priv; } ;
struct TYPE_19__ {int buffer_num_min; TYPE_6__* priv; scalar_t__ buffer_num_recommended; } ;
struct TYPE_18__ {TYPE_5__* module; int pf_set_format; void* pf_send; void* pf_flush; void* pf_disable; void* pf_enable; } ;
struct TYPE_17__ {void* queue; } ;
struct TYPE_16__ {int buffer_num_min; TYPE_3__* priv; scalar_t__ buffer_num_recommended; } ;
struct TYPE_15__ {TYPE_2__* module; int pf_set_format; void* pf_send; void* pf_flush; void* pf_disable; void* pf_enable; } ;
struct TYPE_14__ {void* queue; } ;
struct TYPE_13__ {int (* pf_destroy ) (TYPE_8__*) ;int * module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_MODULE_T ;
typedef TYPE_8__ MMAL_COMPONENT_T ;
typedef int MMAL_COMPONENT_MODULE_T ;


 scalar_t__ MMAL_ENOMEM ;
 int MMAL_PARAM_UNUSED (char const*) ;
 int MMAL_PORT_TYPE_INPUT ;
 int MMAL_PORT_TYPE_OUTPUT ;
 scalar_t__ MMAL_SUCCESS ;
 int copy_component_destroy (TYPE_8__*) ;
 int copy_do_processing_loop ;
 int copy_input_port_format_commit ;
 int copy_output_port_format_commit ;
 void* copy_port_disable ;
 void* copy_port_enable ;
 void* copy_port_flush ;
 void* copy_port_send ;
 int memset (int *,int ,int) ;
 scalar_t__ mmal_component_action_register (TYPE_8__*,int ) ;
 void* mmal_ports_alloc (TYPE_8__*,int,int ,int) ;
 void* mmal_queue_create () ;
 int * vcos_malloc (int,char*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_create_copy(const char *name, MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module;
   MMAL_STATUS_T status = MMAL_ENOMEM;
   MMAL_PARAM_UNUSED(name);


   component->priv->module = module = vcos_malloc(sizeof(*module), "mmal module");
   if (!module)
      return MMAL_ENOMEM;
   memset(module, 0, sizeof(*module));

   component->priv->pf_destroy = copy_component_destroy;


   component->input = mmal_ports_alloc(component, 1, MMAL_PORT_TYPE_INPUT, sizeof(MMAL_PORT_MODULE_T));
   if(!component->input)
      goto error;
   component->input_num = 1;
   component->input[0]->priv->pf_enable = copy_port_enable;
   component->input[0]->priv->pf_disable = copy_port_disable;
   component->input[0]->priv->pf_flush = copy_port_flush;
   component->input[0]->priv->pf_send = copy_port_send;
   component->input[0]->priv->pf_set_format = copy_input_port_format_commit;
   component->input[0]->buffer_num_min = 1;
   component->input[0]->buffer_num_recommended = 0;
   component->input[0]->priv->module->queue = mmal_queue_create();
   if(!component->input[0]->priv->module->queue)
      goto error;

   component->output = mmal_ports_alloc(component, 1, MMAL_PORT_TYPE_OUTPUT, sizeof(MMAL_PORT_MODULE_T));
   if(!component->output)
      goto error;
   component->output_num = 1;
   component->output[0]->priv->pf_enable = copy_port_enable;
   component->output[0]->priv->pf_disable = copy_port_disable;
   component->output[0]->priv->pf_flush = copy_port_flush;
   component->output[0]->priv->pf_send = copy_port_send;
   component->output[0]->priv->pf_set_format = copy_output_port_format_commit;
   component->output[0]->buffer_num_min = 1;
   component->output[0]->buffer_num_recommended = 0;
   component->output[0]->priv->module->queue = mmal_queue_create();
   if(!component->output[0]->priv->module->queue)
      goto error;

   status = mmal_component_action_register(component, copy_do_processing_loop);
   if (status != MMAL_SUCCESS)
      goto error;

   return MMAL_SUCCESS;

 error:
   copy_component_destroy(component);
   return status;
}
