#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ alloc_size; scalar_t__ data; scalar_t__ length; TYPE_5__* type; scalar_t__ offset; } ;
struct TYPE_26__ {scalar_t__ status; } ;
struct TYPE_25__ {unsigned int output_num; TYPE_6__** output; TYPE_1__* priv; } ;
struct TYPE_24__ {TYPE_3__* priv; } ;
struct TYPE_22__ {int planes; scalar_t__* offset; } ;
struct TYPE_23__ {TYPE_4__ video; } ;
struct TYPE_21__ {TYPE_2__* module; } ;
struct TYPE_20__ {scalar_t__ frame_size; int /*<<< orphan*/  count; TYPE_4__ frame; int /*<<< orphan*/  queue; } ;
struct TYPE_19__ {TYPE_8__* module; } ;
typedef  TYPE_6__ MMAL_PORT_T ;
typedef  TYPE_7__ MMAL_COMPONENT_T ;
typedef  TYPE_8__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_9__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_9__*,scalar_t__) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_9__*) ; 
 TYPE_9__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *buffer;
   unsigned int i;

   if (module->status != MMAL_SUCCESS)
      return;

   /* Loop through all the ports */
   for (i = 0; i < component->output_num; i++)
   {
      MMAL_PORT_T *port = component->output[i];

      buffer = FUNC6(port->priv->module->queue);
      if (!buffer)
         continue;

      /* Sanity check the buffer size */
      if (buffer->alloc_size < port->priv->module->frame_size)
      {
         FUNC0("buffer too small (%i/%i)",
                   buffer->alloc_size, port->priv->module->frame_size);
         module->status = MMAL_EINVAL;
         FUNC7(port->priv->module->queue, buffer);
         FUNC4(component, module->status);
         return;
      }
      module->status = FUNC2(buffer);
      if (module->status != MMAL_SUCCESS)
      {
         FUNC0("invalid buffer (%p, %p)", buffer, buffer->data);
         FUNC7(port->priv->module->queue, buffer);
         FUNC4(component, module->status);
         return;
      }

      buffer->offset = 0;
      buffer->length = port->priv->module->frame_size;
      buffer->type->video = port->priv->module->frame;

      FUNC1(buffer->data, 0xff, buffer->length);
      if (buffer->type->video.planes > 1)
         FUNC1(buffer->data + buffer->type->video.offset[1],
                0x7f - port->priv->module->count++,
                buffer->length - buffer->type->video.offset[1]);

      FUNC3(buffer);
      FUNC5(port, buffer);
   }

   FUNC8(10); /* Make sure we don't peg all the resources */
}