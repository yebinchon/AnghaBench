#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__** output; } ;
struct TYPE_9__ {int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_num_min; int /*<<< orphan*/  format; } ;
struct TYPE_8__ {size_t index; int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_num_min; int /*<<< orphan*/  format; int /*<<< orphan*/  is_enabled; TYPE_3__* component; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_EVENT_FORMAT_CHANGED ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC7(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_EVENT_FORMAT_CHANGED_T *event;
   MMAL_PORT_T *output = component->output[0];
   MMAL_BUFFER_HEADER_T *buffer;
   MMAL_STATUS_T status;

   /* If the output port is not enabled we just need to update its format.
    * Otherwise we'll have to trigger a format changed event for it. */
   if (!output->is_enabled)
   {
      status = FUNC4(output->format, port->format);
      return status;
   }

   /* Send an event on the output port */
   status = FUNC5(output, &buffer, MMAL_EVENT_FORMAT_CHANGED);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("unable to get an event buffer");
      return status;
   }
   event = FUNC2(buffer);
   if (!event)
   {
      FUNC1(buffer);
      FUNC0("failed to set format");
      return MMAL_EINVAL;
   }
   FUNC3(event->format, port->format);

   /* Pass on the buffer requirements */
   event->buffer_num_min = port->buffer_num_min;
   event->buffer_size_min = port->buffer_size_min;
   event->buffer_num_recommended = port->buffer_num_recommended;
   event->buffer_size_recommended = port->buffer_size_recommended;

   FUNC6(component->output[port->index], buffer);
   return status;
}