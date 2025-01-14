
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_22__ {TYPE_3__* priv; } ;
struct TYPE_21__ {int writer; } ;
struct TYPE_20__ {unsigned int input_num; TYPE_5__* control; TYPE_9__** input; TYPE_1__* priv; } ;
struct TYPE_19__ {TYPE_4__* priv; } ;
struct TYPE_18__ {int pf_parameter_set; } ;
struct TYPE_17__ {TYPE_2__* module; int pf_set_format; int pf_send; int pf_flush; int pf_disable; int pf_enable; } ;
struct TYPE_16__ {int format; int queue; } ;
struct TYPE_15__ {int (* pf_destroy ) (TYPE_6__*) ;TYPE_7__* module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_MODULE_T ;
typedef TYPE_6__ MMAL_COMPONENT_T ;
typedef TYPE_7__ MMAL_COMPONENT_MODULE_T ;


 scalar_t__ MMAL_ENOMEM ;
 int MMAL_PARAM_UNUSED (char const*) ;
 int MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_SUCCESS ;
 unsigned int WRITER_PORTS_NUM ;
 int container_component_destroy (TYPE_6__*) ;
 int container_port_disable ;
 int container_port_enable ;
 int container_port_flush ;
 int container_port_send ;
 int container_port_set_format ;
 int memset (TYPE_7__*,int ,int) ;
 scalar_t__ mmal_component_action_register (TYPE_6__*,int ) ;
 TYPE_9__** mmal_ports_alloc (TYPE_6__*,unsigned int,int ,int) ;
 int mmal_queue_create () ;
 int vc_container_format_create (int ) ;
 TYPE_7__* vcos_malloc (int,char*) ;
 int writer_do_processing ;
 int writer_parameter_set ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_create_writer(const char *name, MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module;
   MMAL_STATUS_T status = MMAL_ENOMEM;
   unsigned int i;
   MMAL_PARAM_UNUSED(name);


   component->priv->module = module = vcos_malloc(sizeof(*module), "mmal module");
   if (!module)
      return MMAL_ENOMEM;
   memset(module, 0, sizeof(*module));
   module->writer = 1;

   component->priv->pf_destroy = container_component_destroy;



   component->input = mmal_ports_alloc(component, WRITER_PORTS_NUM, MMAL_PORT_TYPE_INPUT,
                                        sizeof(MMAL_PORT_MODULE_T));
   if(!component->input)
      goto error;
   component->input_num = WRITER_PORTS_NUM;

   for(i = 0; i < component->input_num; i++)
   {
      component->input[i]->priv->pf_enable = container_port_enable;
      component->input[i]->priv->pf_disable = container_port_disable;
      component->input[i]->priv->pf_flush = container_port_flush;
      component->input[i]->priv->pf_send = container_port_send;
      component->input[i]->priv->pf_set_format = container_port_set_format;

      component->input[i]->priv->module->queue = mmal_queue_create();
      if(!component->input[i]->priv->module->queue)
         goto error;
      component->input[i]->priv->module->format = vc_container_format_create(0);
      if(!component->input[i]->priv->module->format)
         goto error;
   }
   component->control->priv->pf_parameter_set = writer_parameter_set;

   status = mmal_component_action_register(component, writer_do_processing);
   if (status != MMAL_SUCCESS)
      goto error;

   return MMAL_SUCCESS;

 error:
   container_component_destroy(component);
   return status;
}
