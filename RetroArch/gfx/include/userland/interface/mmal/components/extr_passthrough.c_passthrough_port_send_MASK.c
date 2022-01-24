#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ length; } ;
struct TYPE_22__ {int error; } ;
struct TYPE_21__ {TYPE_4__** output; TYPE_4__** input; TYPE_1__* priv; } ;
struct TYPE_20__ {size_t index; scalar_t__ type; TYPE_5__* component; TYPE_3__* priv; } ;
struct TYPE_19__ {TYPE_2__* module; } ;
struct TYPE_18__ {int /*<<< orphan*/  queue; } ;
struct TYPE_17__ {TYPE_6__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_PORT_T ;
typedef  TYPE_5__ MMAL_COMPONENT_T ;
typedef  TYPE_6__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_7__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ MMAL_PORT_TYPE_INPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_7__*,TYPE_7__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_7__*) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_7__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC6(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_PORT_T **other_port, *in_port, *out_port;
   MMAL_BUFFER_HEADER_T **other_buffer, *in = 0, *out = 0;
   MMAL_STATUS_T status;

   if (module->error)
   {
      FUNC5(port->priv->module->queue, buffer);
      return MMAL_SUCCESS; /* Just do nothing */
   }

   in_port = port->component->input[port->index];
   out_port = port->component->output[port->index];

   if (port->type == MMAL_PORT_TYPE_INPUT)
   {
      other_port = &out_port;
      other_buffer = &out;
      in = buffer;
   }
   else
   {
      other_port = &in_port;
      other_buffer = &in;
      out = buffer;
   }

   /* Get a buffer header from the matching port */
   *other_buffer = FUNC4((*other_port)->priv->module->queue);
   if (!*other_buffer)
   {
      /* None available. Just queue the buffer header for now. */
      FUNC5(port->priv->module->queue, buffer);
      return MMAL_SUCCESS;
   }

   /* Copy our input buffer header */
   status = FUNC1(out, in);
   if (status != MMAL_SUCCESS)
      goto error;

   /* Consume the input buffer */
   in->length = 0;

   /* Send buffers back */
   FUNC3(in_port, in);
   FUNC3(out_port, out);

   return MMAL_SUCCESS;

 error:
   FUNC5(in_port->priv->module->queue, in);
   FUNC5(out_port->priv->module->queue, out);
   status = FUNC2(port->component, status);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("unable to send an error event buffer (%i)", (int)status);
      return MMAL_SUCCESS;
   }
   module->error = 1;
   return MMAL_SUCCESS;
}