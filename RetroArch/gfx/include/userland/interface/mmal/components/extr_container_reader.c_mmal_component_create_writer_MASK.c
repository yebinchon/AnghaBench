#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_3__* priv; } ;
struct TYPE_21__ {int writer; } ;
struct TYPE_20__ {unsigned int input_num; TYPE_5__* control; TYPE_9__** input; TYPE_1__* priv; } ;
struct TYPE_19__ {TYPE_4__* priv; } ;
struct TYPE_18__ {int /*<<< orphan*/  pf_parameter_set; } ;
struct TYPE_17__ {TYPE_2__* module; int /*<<< orphan*/  pf_set_format; int /*<<< orphan*/  pf_send; int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_disable; int /*<<< orphan*/  pf_enable; } ;
struct TYPE_16__ {int /*<<< orphan*/  format; int /*<<< orphan*/  queue; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* pf_destroy ) (TYPE_6__*) ;TYPE_7__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_MODULE_T ;
typedef  TYPE_6__ MMAL_COMPONENT_T ;
typedef  TYPE_7__ MMAL_COMPONENT_MODULE_T ;

/* Variables and functions */
 scalar_t__ MMAL_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  MMAL_PORT_TYPE_INPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 unsigned int WRITER_PORTS_NUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  container_port_disable ; 
 int /*<<< orphan*/  container_port_enable ; 
 int /*<<< orphan*/  container_port_flush ; 
 int /*<<< orphan*/  container_port_send ; 
 int /*<<< orphan*/  container_port_set_format ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_9__** FUNC4 (TYPE_6__*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC7 (int,char*) ; 
 int /*<<< orphan*/  writer_do_processing ; 
 int /*<<< orphan*/  writer_parameter_set ; 

__attribute__((used)) static MMAL_STATUS_T FUNC8(const char *name, MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module;
   MMAL_STATUS_T status = MMAL_ENOMEM;
   unsigned int i;
   FUNC0(name);

   /* Allocate the context for our module */
   component->priv->module = module = FUNC7(sizeof(*module), "mmal module");
   if (!module)
      return MMAL_ENOMEM;
   FUNC2(module, 0, sizeof(*module));
   module->writer = 1;

   component->priv->pf_destroy = container_component_destroy;

   /* Now the component on reader has been created, we can allocate
    * the ports for this component */
   component->input = FUNC4(component, WRITER_PORTS_NUM, MMAL_PORT_TYPE_INPUT,
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

      component->input[i]->priv->module->queue = FUNC5();
      if(!component->input[i]->priv->module->queue)
         goto error;
      component->input[i]->priv->module->format = FUNC6(0);
      if(!component->input[i]->priv->module->format)
         goto error;
   }
   component->control->priv->pf_parameter_set = writer_parameter_set;

   status = FUNC3(component, writer_do_processing);
   if (status != MMAL_SUCCESS)
      goto error;

   return MMAL_SUCCESS;

 error:
   FUNC1(component);
   return status;
}