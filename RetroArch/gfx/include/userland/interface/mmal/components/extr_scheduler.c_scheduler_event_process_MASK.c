#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ cmd; scalar_t__ length; } ;
struct TYPE_15__ {int /*<<< orphan*/  format; } ;
struct TYPE_14__ {size_t index; TYPE_1__* component; int /*<<< orphan*/  name; int /*<<< orphan*/  format; } ;
struct TYPE_13__ {int /*<<< orphan*/ * output; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  TYPE_4__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ; 
 scalar_t__ MMAL_SUCCESS ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC7(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_STATUS_T status = MMAL_EINVAL;

   if (buffer->cmd == MMAL_EVENT_FORMAT_CHANGED)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event =
         FUNC2(buffer);
      if (!event)
         goto end;

      status = FUNC4(port->format, event->format);
      if (status == MMAL_SUCCESS)
         status = FUNC6(port);
      if (status != MMAL_SUCCESS)
      {
         FUNC1("format commit failed on port %s (%i)",
                   port->name, status);
         goto end;
      }

      status = MMAL_SUCCESS;
   }
   /* Forward any other event as is to the next component */
   else
   {
      FUNC0("forwarding unknown event %4.4s", (char *)&buffer->cmd);
      status = FUNC3(buffer, port->component->output[port->index]);
      if (status != MMAL_SUCCESS)
      {
         FUNC1("unable to forward event %4.4s", (char *)&buffer->cmd);
         goto end;
      }
   }

 end:
   buffer->length = 0;
   FUNC5(port, buffer);
   return status;
}