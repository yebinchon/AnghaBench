#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ cmd; } ;
struct TYPE_14__ {int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_num_min; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  format; } ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  component; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  int /*<<< orphan*/  MMAL_CONNECTION_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*,char*) ; 
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ; 
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(MMAL_CONNECTION_T *connection,
   MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_STATUS_T status;

   FUNC1("port: %s(%p), buffer: %p, event: %4.4s", port->name, port,
             buffer, (char *)&buffer->cmd);

   if (buffer->cmd == MMAL_EVENT_FORMAT_CHANGED && port->type == MMAL_PORT_TYPE_OUTPUT)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event = FUNC5(buffer);
      if (event)
      {
         FUNC0("----------Port format changed----------");
         FUNC7(port);
         FUNC0("-----------------to---------------------");
         FUNC6(event->format);
         FUNC0(" buffers num (opt %i, min %i), size (opt %i, min: %i)",
                   event->buffer_num_recommended, event->buffer_num_min,
                   event->buffer_size_recommended, event->buffer_size_min);
         FUNC0("----------------------------------------");
      }

      status = FUNC3(connection, buffer);
   }

   else
      status = MMAL_SUCCESS; /* FIXME: ignore any other event for now */

   FUNC2(buffer);

   if (status != MMAL_SUCCESS)
      FUNC4(port->component, status);
}