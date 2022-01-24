#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {struct TYPE_9__* port; scalar_t__ control; TYPE_1__* priv; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {scalar_t__ (* pf_destroy ) (TYPE_2__*) ;scalar_t__ event_pool; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_CORE_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC9(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;
   MMAL_STATUS_T status;

   FUNC0("%s %d", component->name, component->id);

   FUNC1(component);

   /* Should pf_destroy be allowed to fail ?
    * If so, what do we do if it fails ?
    */
   if (component->priv->pf_destroy)
   {
      status = component->priv->pf_destroy(component);
      if(!FUNC8(status == MMAL_SUCCESS))
         return status;
   }

   if (component->priv->event_pool)
      FUNC3(component->priv->event_pool);

   if (component->control)
      FUNC4(component->control);

   if (component->port)
      FUNC6(component->port);

   FUNC7(&private->lock);
   FUNC6(component);
   FUNC2();
   return MMAL_SUCCESS;
}