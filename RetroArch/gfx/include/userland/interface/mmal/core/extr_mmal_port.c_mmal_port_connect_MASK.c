#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int core_owns_connection; TYPE_2__* connected_port; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_1__* priv; scalar_t__ is_enabled; int /*<<< orphan*/  name; } ;
struct TYPE_12__ {scalar_t__ (* pf_connect ) (TYPE_2__*,TYPE_2__*) ;TYPE_3__* core; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_PORT_PRIVATE_CORE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_EISCONN ; 
 scalar_t__ MMAL_ENOSYS ; 
 scalar_t__ MMAL_PORT_TYPE_CLOCK ; 
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_2__*) ; 

MMAL_STATUS_T FUNC5(MMAL_PORT_T *port, MMAL_PORT_T *other_port)
{
   MMAL_PORT_PRIVATE_CORE_T* core;
   MMAL_PORT_PRIVATE_CORE_T* other_core;
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_PORT_T* output_port = NULL;

   if (!port || !port->priv || !other_port || !other_port->priv)
   {
      FUNC1("invalid port");
      return MMAL_EINVAL;
   }

   if ((port->type == MMAL_PORT_TYPE_CLOCK) && (port->type != other_port->type))
   {
      FUNC1("invalid port connection");
      return MMAL_EINVAL;
   }

   FUNC2("connecting %s(%p) to %s(%p)", port->name, port, other_port->name, other_port);

   if (!port->priv->pf_connect || !other_port->priv->pf_connect)
   {
      FUNC1("at least one pf_connect is NULL");
      return MMAL_ENOSYS;
   }

   core = port->priv->core;
   other_core = other_port->priv->core;

   FUNC0(port);
   if (core->connected_port)
   {
      FUNC1("port %p is already connected", port);
      FUNC3(port);
      return MMAL_EISCONN;
   }
   if (port->is_enabled)
   {
      FUNC1("port %p should not be enabled", port);
      FUNC3(port);
      return MMAL_EINVAL;
   }

   FUNC0(other_port);
   if (other_core->connected_port)
   {
      FUNC1("port %p is already connected", other_port);
      status = MMAL_EISCONN;
      goto finish;
   }
   if (other_port->is_enabled)
   {
      FUNC1("port %p should not be enabled", other_port);
      status = MMAL_EINVAL;
      goto finish;
   }

   core->connected_port = other_port;
   other_core->connected_port = port;

   core->core_owns_connection = 0;
   other_core->core_owns_connection = 0;

   /* Check to see if the port will manage the connection on its own. If not then the core
    * will manage it. */
   output_port = port->type == MMAL_PORT_TYPE_OUTPUT ? port : other_port;
   if (output_port->priv->pf_connect(port, other_port) == MMAL_SUCCESS)
      goto finish;

   core->core_owns_connection = 1;
   other_core->core_owns_connection = 1;

finish:
   FUNC3(other_port);
   FUNC3(port);
   return status;
}