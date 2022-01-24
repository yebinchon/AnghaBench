#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ cmd; scalar_t__ length; } ;
struct TYPE_12__ {int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_num_min; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  format; } ;
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  format; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  int /*<<< orphan*/  MMAL_CONNECTION_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ; 
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC5(MMAL_CONNECTION_T *connection, MMAL_PORT_T *port,
   MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;

   FUNC0("%s(%p) received event %4.4s (%i bytes)", port->name, port,
            (char *)&buffer->cmd, (int)buffer->length);

   if (buffer->cmd == MMAL_EVENT_FORMAT_CHANGED && port->type == MMAL_PORT_TYPE_OUTPUT)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event = FUNC4(buffer);
      if (event)
      {
         FUNC0("----------Port format changed----------");
         FUNC1(port->format, port);
         FUNC0("-----------------to---------------------");
         FUNC1(event->format, 0);
         FUNC0(" buffers num (opt %i, min %i), size (opt %i, min: %i)",
                  event->buffer_num_recommended, event->buffer_num_min,
                  event->buffer_size_recommended, event->buffer_size_min);
         FUNC0("----------------------------------------");
      }

      status = FUNC3(connection, buffer);
   }

   FUNC2(buffer);
   return status;
}