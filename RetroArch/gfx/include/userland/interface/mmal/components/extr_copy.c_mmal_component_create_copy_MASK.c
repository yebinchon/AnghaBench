#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int input_num; int output_num; TYPE_7__** output; TYPE_4__** input; TYPE_1__* priv; } ;
struct TYPE_19__ {int buffer_num_min; TYPE_6__* priv; scalar_t__ buffer_num_recommended; } ;
struct TYPE_18__ {TYPE_5__* module; int /*<<< orphan*/  pf_set_format; void* pf_send; void* pf_flush; void* pf_disable; void* pf_enable; } ;
struct TYPE_17__ {void* queue; } ;
struct TYPE_16__ {int buffer_num_min; TYPE_3__* priv; scalar_t__ buffer_num_recommended; } ;
struct TYPE_15__ {TYPE_2__* module; int /*<<< orphan*/  pf_set_format; void* pf_send; void* pf_flush; void* pf_disable; void* pf_enable; } ;
struct TYPE_14__ {void* queue; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* pf_destroy ) (TYPE_8__*) ;int /*<<< orphan*/ * module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_MODULE_T ;
typedef  TYPE_8__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_MODULE_T ;

/* Variables and functions */
 scalar_t__ MMAL_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  MMAL_PORT_TYPE_INPUT ; 
 int /*<<< orphan*/  MMAL_PORT_TYPE_OUTPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  copy_do_processing_loop ; 
 int /*<<< orphan*/  copy_input_port_format_commit ; 
 int /*<<< orphan*/  copy_output_port_format_commit ; 
 void* copy_port_disable ; 
 void* copy_port_enable ; 
 void* copy_port_flush ; 
 void* copy_port_send ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_8__*,int,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC7(const char *name, MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module;
   MMAL_STATUS_T status = MMAL_ENOMEM;
   FUNC0(name);

   /* Allocate the context for our module */
   component->priv->module = module = FUNC6(sizeof(*module), "mmal module");
   if (!module)
      return MMAL_ENOMEM;
   FUNC2(module, 0, sizeof(*module));

   component->priv->pf_destroy = copy_component_destroy;

   /* Allocate and initialise all the ports for this component */
   component->input = FUNC4(component, 1, MMAL_PORT_TYPE_INPUT, sizeof(MMAL_PORT_MODULE_T));
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
   component->input[0]->priv->module->queue = FUNC5();
   if(!component->input[0]->priv->module->queue)
      goto error;

   component->output = FUNC4(component, 1, MMAL_PORT_TYPE_OUTPUT, sizeof(MMAL_PORT_MODULE_T));
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
   component->output[0]->priv->module->queue = FUNC5();
   if(!component->output[0]->priv->module->queue)
      goto error;

   status = FUNC3(component, copy_do_processing_loop);
   if (status != MMAL_SUCCESS)
      goto error;

   return MMAL_SUCCESS;

 error:
   FUNC1(component);
   return status;
}