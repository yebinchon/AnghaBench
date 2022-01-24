#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  lock; scalar_t__ destruction_pending; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; TYPE_3__* component; } ;
struct TYPE_8__ {scalar_t__ refcount_ports; scalar_t__ refcount; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;
typedef  TYPE_4__ MMAL_COMPONENT_CORE_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

MMAL_STATUS_T FUNC5(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;

   FUNC0("port %s(%p), refcount %i", port->name, port,
             component->priv->refcount_ports);

   /* Sanity check the refcount */
   if (!FUNC4(component->priv->refcount_ports > 0))
      return MMAL_EINVAL;

   FUNC2(&private->lock);
   if (--component->priv->refcount_ports ||
       component->priv->refcount || private->destruction_pending)
   {
      FUNC3(&private->lock);
      return MMAL_SUCCESS;
   }
   FUNC3(&private->lock);

   return FUNC1(component);
}