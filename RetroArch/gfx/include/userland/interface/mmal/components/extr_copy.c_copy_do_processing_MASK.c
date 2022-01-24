#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ length; scalar_t__ alloc_size; int /*<<< orphan*/ * type; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; int /*<<< orphan*/  flags; scalar_t__ offset; scalar_t__ data; scalar_t__ cmd; } ;
struct TYPE_26__ {scalar_t__ status; } ;
struct TYPE_25__ {TYPE_4__** output; TYPE_4__** input; TYPE_1__* priv; } ;
struct TYPE_24__ {int /*<<< orphan*/  format; } ;
struct TYPE_23__ {TYPE_3__* priv; int /*<<< orphan*/  name; int /*<<< orphan*/  format; } ;
struct TYPE_22__ {scalar_t__ (* pf_set_format ) (TYPE_4__*) ;TYPE_2__* module; } ;
struct TYPE_21__ {int /*<<< orphan*/  queue; scalar_t__ needs_configuring; } ;
struct TYPE_20__ {TYPE_7__* module; } ;
typedef  TYPE_4__ MMAL_PORT_T ;
typedef  TYPE_5__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  TYPE_6__ MMAL_COMPONENT_T ;
typedef  TYPE_7__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_8__ MMAL_BUFFER_HEADER_T ;
typedef  int MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*,scalar_t__) ; 
 TYPE_5__* FUNC5 (TYPE_8__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_8__*) ; 
 TYPE_8__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 

__attribute__((used)) static MMAL_BOOL_T FUNC11(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_PORT_T *port_in = component->input[0];
   MMAL_PORT_T *port_out = component->output[0];
   MMAL_BUFFER_HEADER_T *in, *out;

   if (port_out->priv->module->needs_configuring)
      return 0;

   in = FUNC8(port_in->priv->module->queue);
   if (!in)
      return 0;

   /* Handle event buffers */
   if (in->cmd)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event = FUNC5(in);
      if (event)
      {
         module->status = FUNC6(port_in->format, event->format);
         if (module->status == MMAL_SUCCESS)
            module->status = port_in->priv->pf_set_format(port_in);
         if (module->status != MMAL_SUCCESS)
         {
            FUNC0("format not set on port %s %p (%i)", port_in->name, port_in, module->status);
            if (FUNC4(component, module->status) != MMAL_SUCCESS)
               FUNC0("unable to send an error event buffer");
         }
      }
      else
      {
         FUNC0("discarding event %i on port %s %p", (int)in->cmd, port_in->name, port_in);
      }

      in->length = 0;
      FUNC7(port_in, in);
      return 1;
   }

   /* Don't do anything if we've already seen an error */
   if (module->status != MMAL_SUCCESS)
   {
      FUNC9(port_in->priv->module->queue, in);
      return 0;
   }

   out = FUNC8(port_out->priv->module->queue);
   if (!out)
   {
      FUNC9(port_in->priv->module->queue, in);
      return 0;
   }

   /* Sanity check the output buffer is big enough */
   if (out->alloc_size < in->length)
   {
      module->status = MMAL_EINVAL;
      if (FUNC4(component, module->status) != MMAL_SUCCESS)
         FUNC0("unable to send an error event buffer");
      return 0;
   }

   FUNC2(out);
   FUNC2(in);
   FUNC1(out->data, in->data + in->offset, in->length);
   FUNC3(in);
   FUNC3(out);
   out->length     = in->length;
   out->offset     = 0;
   out->flags      = in->flags;
   out->pts        = in->pts;
   out->dts        = in->dts;
   *out->type      = *in->type;

   /* Send buffers back */
   in->length = 0;
   FUNC7(port_in, in);
   FUNC7(port_out, out);
   return 1;
}