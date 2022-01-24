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
struct TYPE_16__ {TYPE_3__* connected_port; } ;
struct TYPE_15__ {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  is_enabled; TYPE_2__* priv; scalar_t__ index; TYPE_1__* component; } ;
struct TYPE_14__ {TYPE_4__* core; int /*<<< orphan*/  pf_disable; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_PORT_PRIVATE_CORE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_3__*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,TYPE_3__*) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOSYS ; 
 scalar_t__ MMAL_PORT_TYPE_INPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

MMAL_STATUS_T FUNC7(MMAL_PORT_T *port)
{
   MMAL_STATUS_T status;
   MMAL_PORT_T *connected_port;
   MMAL_PORT_PRIVATE_CORE_T *core;

   if (!port || !port->priv)
      return MMAL_EINVAL;

   FUNC2("%s(%i:%i) port %p", port->component->name,
             (int)port->type, (int)port->index, port);

   if (!port->priv->pf_disable)
      return MMAL_ENOSYS;

   core = port->priv->core;
   FUNC0(port);
   connected_port = core->connected_port;

   /* Sanity checking */
   if (!port->is_enabled)
   {
      FUNC3(port);
      FUNC1("port %s(%p) is not enabled", port->name, port);
      return MMAL_EINVAL;
   }

   if (connected_port)
      FUNC0(connected_port);

   /* Disable the output port of a connection first */
   if (connected_port && connected_port->type != MMAL_PORT_TYPE_INPUT)
   {
      status = FUNC5(connected_port);
      if (status != MMAL_SUCCESS)
      {
         FUNC1("failed to disable connected port (%s)%p (%s)", connected_port->name,
            connected_port, FUNC6(status));
         goto end;
      }
   }

   status = FUNC5(port);
   if (status != MMAL_SUCCESS)
   {
      FUNC1("failed to disable port (%s)%p", port->name, port);
      goto end;
   }

   /* Disable the input port of a connection last */
   if (connected_port && connected_port->type == MMAL_PORT_TYPE_INPUT)
   {
      status = FUNC5(connected_port);
      if (status != MMAL_SUCCESS)
      {
         FUNC1("failed to disable connected port (%s)%p (%s)", connected_port->name,
            connected_port, FUNC6(status));
         goto end;
      }
   }

   if (connected_port)
   {
      status = FUNC4(port, connected_port);
      if (status != MMAL_SUCCESS)
         FUNC1("failed to disable connection (%s)%p (%s)", port->name,
            port, FUNC6(status));
   }

end:
   if (connected_port)
      FUNC3(connected_port);
   FUNC3(port);

   return status;
}