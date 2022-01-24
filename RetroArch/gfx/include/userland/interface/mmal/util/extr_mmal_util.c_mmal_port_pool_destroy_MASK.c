#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  is_enabled; scalar_t__ index; scalar_t__ type; TYPE_1__* component; int /*<<< orphan*/  priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_POOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(MMAL_PORT_T *port, MMAL_POOL_T *pool)
{
   if (!port || !port->priv || !pool)
      return;

   FUNC1("%s(%i:%i) port %p, pool %p", port->component->name,
             (int)port->type, (int)port->index, port, pool);

   if (!FUNC4(!port->is_enabled))
   {
      FUNC0("port %p, pool %p destroyed while port enabled", port, pool);
      FUNC3(port);
   }

   FUNC2(pool);
}