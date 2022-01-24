#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ cmd; int /*<<< orphan*/  length; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  data; } ;
struct TYPE_19__ {int /*<<< orphan*/  format; } ;
struct TYPE_18__ {int /*<<< orphan*/  name; scalar_t__ is_enabled; int /*<<< orphan*/  component; int /*<<< orphan*/  format; TYPE_2__* priv; } ;
struct TYPE_17__ {TYPE_1__* core; } ;
struct TYPE_16__ {TYPE_3__* connected_port; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  TYPE_5__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_PORT_T* connected_port = port->priv->core->connected_port;
   MMAL_STATUS_T status;

   FUNC1("buffer %p from connected output port %p: data %p, alloc_size %u, length %u",
             buffer, port, buffer->data, buffer->alloc_size, buffer->length);

   if (buffer->cmd)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event = FUNC4(buffer);

      /* Handle format changed events */
      if (event)
      {
         /* Apply the change */
         status = FUNC5(port->format, event->format);
         if (status == MMAL_SUCCESS)
            status = FUNC6(port);
         if (status != MMAL_SUCCESS)
            FUNC0("format commit failed on port %s (%i)", port->name, status);

         /* Forward to the connected port */
         if (status == MMAL_SUCCESS)
            status = FUNC7(connected_port, buffer);

         if (status != MMAL_SUCCESS)
         {
            FUNC3(port->component, status);
            FUNC2(buffer);
         }
         return; /* Event handled */
      }

      /* FIXME Release other event buffers for now, until we can deal with shared memory issues */
      FUNC2(buffer);
   }
   else
   {
      if (port->is_enabled)
      {
         /* Forward data buffers to the connected input port */
         status = FUNC7(connected_port, buffer);
         if (status != MMAL_SUCCESS)
         {
            FUNC0("%s could not send buffer on port %s (%s)",
                      port->name, connected_port->name, FUNC8(status));
            FUNC2(buffer);
         }
      }
      else
      {
         /* This port is disabled. Buffer will be a flushed buffer, so
          * return to the pool rather than delivering it.
          */
         FUNC2(buffer);
      }
   }
}