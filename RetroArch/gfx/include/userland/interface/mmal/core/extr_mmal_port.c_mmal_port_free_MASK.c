#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* name; scalar_t__ format; TYPE_2__* priv; } ;
struct TYPE_8__ {TYPE_1__* core; } ;
struct TYPE_7__ {scalar_t__ format_ptr_copy; int /*<<< orphan*/  lock; int /*<<< orphan*/  send_lock; int /*<<< orphan*/  transit_lock; int /*<<< orphan*/  transit_sema; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  connection_lock; } ;
typedef  TYPE_3__ MMAL_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(MMAL_PORT_T *port)
{
   FUNC0("%s at %p", port ? port->name : "<invalid>", port);

   if (!port)
      return;

   FUNC2(port->format == port->priv->core->format_ptr_copy);
   FUNC1(port->priv->core->format_ptr_copy);
   FUNC4(&port->priv->core->connection_lock);
   FUNC4(&port->priv->core->stats_lock);
   FUNC5(&port->priv->core->transit_sema);
   FUNC4(&port->priv->core->transit_lock);
   FUNC4(&port->priv->core->send_lock);
   FUNC4(&port->priv->core->lock);
   FUNC3(port);
}