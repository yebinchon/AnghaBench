#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {struct TYPE_18__* next; } ;
struct TYPE_17__ {int /*<<< orphan*/ * buffer_header_callback; TYPE_4__* queue_first; TYPE_4__** queue_last; scalar_t__ pool_for_connection; } ;
struct TYPE_16__ {int is_enabled; TYPE_1__* priv; int /*<<< orphan*/  name; int /*<<< orphan*/  component; } ;
struct TYPE_15__ {scalar_t__ (* pf_disable ) (TYPE_2__*) ;TYPE_3__* core; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_PORT_PRIVATE_CORE_T ;
typedef  TYPE_4__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC14(MMAL_PORT_T *port)
{
   MMAL_PORT_PRIVATE_CORE_T* core = port->priv->core;
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_BUFFER_HEADER_T *buffer;

   FUNC2(port);

   if (!port->is_enabled)
      goto end;

   FUNC3(port);
   port->is_enabled = 0;
   FUNC7(port);

   FUNC8(port->component);

   if (core->pool_for_connection)
      FUNC10(core->pool_for_connection, NULL, NULL);

   status = port->priv->pf_disable(port);

   FUNC9(port->component);

   if (status != MMAL_SUCCESS)
   {
      FUNC5("port %p could not be disabled (%s)", port->name, FUNC12(status));
      FUNC3(port);
      port->is_enabled = 1;
      FUNC7(port);
      goto end;
   }

   /* Flush our internal queue */
   buffer = port->priv->core->queue_first;
   while (buffer)
   {
      MMAL_BUFFER_HEADER_T *next = buffer->next;
      FUNC11(port, buffer);
      buffer = next;
   }
   port->priv->core->queue_first = 0;
   port->priv->core->queue_last = &port->priv->core->queue_first;

   /* Wait for all the buffers to have come back from the component */
   FUNC4("%s waiting for %i buffers left in transit", port->name, (int)FUNC0(port));
   FUNC1(port);
   FUNC4("%s has no buffers left in transit", port->name);

   port->priv->core->buffer_header_callback = NULL;

 end:
   FUNC6(port);
   return status;
}