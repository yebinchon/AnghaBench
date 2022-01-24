#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int length; int /*<<< orphan*/  data; } ;
struct TYPE_18__ {int /*<<< orphan*/  id; } ;
struct TYPE_17__ {TYPE_2__* priv; int /*<<< orphan*/  name; } ;
struct TYPE_16__ {TYPE_1__* clock; } ;
struct TYPE_15__ {int /*<<< orphan*/  queue; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_CLOCK_EVENT_T ;
typedef  TYPE_5__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ MMAL_ENOSPC ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__ const*,int) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_5__*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC9(MMAL_PORT_T *port, const MMAL_CLOCK_EVENT_T *event)
{
   MMAL_STATUS_T status;
   MMAL_BUFFER_HEADER_T *buffer;

   buffer = FUNC6(port->priv->clock->queue);
   if (!buffer)
   {
      FUNC1("%s: no free event buffers available for event %4.4s", port->name, (const char*)&event->id);
      return MMAL_ENOSPC;
   }

   status = FUNC3(buffer);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("failed to lock buffer %s", FUNC8(status));
      FUNC7(port->priv->clock->queue, buffer);
      goto end;
   }
   buffer->length = sizeof(MMAL_CLOCK_EVENT_T);
   FUNC2(buffer->data, event, buffer->length);
   FUNC4(buffer);

   FUNC5(port, buffer);

end:
   return status;
}