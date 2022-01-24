#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_5__ {int /*<<< orphan*/  action_mutex; int /*<<< orphan*/  (* pf_action ) (TYPE_1__*) ;scalar_t__ action_quit; int /*<<< orphan*/  action_event; } ;
struct TYPE_4__ {scalar_t__ priv; } ;
typedef  TYPE_1__ MMAL_COMPONENT_T ;
typedef  TYPE_2__ MMAL_COMPONENT_CORE_PRIVATE_T ;

/* Variables and functions */
 scalar_t__ VCOS_EAGAIN ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void *FUNC5(void *arg)
{
   MMAL_COMPONENT_T *component = (MMAL_COMPONENT_T *)arg;
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;
   VCOS_STATUS_T status;

   while (1)
   {
      status = FUNC1(&private->action_event);

      if (status == VCOS_EAGAIN)
         continue;
      if (private->action_quit)
         break;
      if (!FUNC4(status == VCOS_SUCCESS))
         break;

      FUNC2(&private->action_mutex);
      private->pf_action(component);
      FUNC3(&private->action_mutex);
   }
   return 0;
}