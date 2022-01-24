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
struct TYPE_15__ {TYPE_2__* component; int /*<<< orphan*/  name; } ;
struct TYPE_14__ {TYPE_1__* priv; } ;
struct TYPE_13__ {int /*<<< orphan*/  module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_PORT_T *graph_port, MMAL_PORT_T *other_port)
{
   MMAL_PORT_T *port;

   FUNC0("%s(%p) %s(%p)", graph_port->name, graph_port, other_port->name, other_port);

   port = FUNC1(graph_port->component->priv->module, graph_port);
   if (!port)
      return MMAL_EINVAL;

   /* Forward the call */
   return other_port ? FUNC2(port, other_port) : FUNC3(port);
}