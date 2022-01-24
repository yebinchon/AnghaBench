#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_3__** output; } ;
struct TYPE_13__ {scalar_t__ buffer_size_recommended; scalar_t__ buffer_size_min; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  buffer_num_min; int /*<<< orphan*/  format; } ;
struct TYPE_12__ {scalar_t__ buffer_size_min; scalar_t__ buffer_size_recommended; scalar_t__ buffer_size; TYPE_2__* priv; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  buffer_num_min; int /*<<< orphan*/  format; int /*<<< orphan*/  is_enabled; TYPE_5__* component; } ;
struct TYPE_11__ {TYPE_1__* module; } ;
struct TYPE_10__ {int needs_configuring; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  TYPE_5__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MMAL_EVENT_FORMAT_CHANGED ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ MMAL_SUCCESS ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC8(MMAL_PORT_T *in)
{
   MMAL_COMPONENT_T *component = in->component;
   MMAL_PORT_T *out = component->output[0];
   MMAL_EVENT_FORMAT_CHANGED_T *event;
   MMAL_BUFFER_HEADER_T *buffer;
   MMAL_STATUS_T status;

   /* Check if there's anything to propagate to the output port */
   /* The format of the output port needs to match the input port */
   if (!FUNC3(in->format, out->format) &&
       out->buffer_size_min == out->buffer_size_recommended &&
       out->buffer_size_min == FUNC1(in->buffer_size_min, in->buffer_size))
      return MMAL_SUCCESS;

   /* If the output port is not enabled we just need to update its format.
    * Otherwise we'll have to trigger a format changed event for it. */
   if (!out->is_enabled)
   {
      out->buffer_size_min = out->buffer_size_recommended =
         FUNC1(in->buffer_size, in->buffer_size_min);
      return FUNC5(out->format, in->format);
   }

   /* Send an event on the output port */
   status = FUNC6(out, &buffer, MMAL_EVENT_FORMAT_CHANGED);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("unable to get an event buffer");
      return status;
   }

   event = FUNC2(buffer);
   FUNC4(event->format, in->format); /* FIXME: can full copy be done ? */

   /* Pass on the buffer requirements */
   event->buffer_num_min = out->buffer_num_min;
   event->buffer_num_recommended = out->buffer_num_recommended;
   event->buffer_size_min = event->buffer_size_recommended =
      FUNC1(in->buffer_size_min, in->buffer_size);

   out->priv->module->needs_configuring = 1;
   FUNC7(out, buffer);
   return status;
}