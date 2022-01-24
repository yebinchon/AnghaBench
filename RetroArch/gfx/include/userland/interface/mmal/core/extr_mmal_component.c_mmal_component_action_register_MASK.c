#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_THREAD_ATTR_T ;
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_8__ {int /*<<< orphan*/  priority; } ;
struct TYPE_10__ {void (* pf_action ) (TYPE_2__*) ;int /*<<< orphan*/  action_event; int /*<<< orphan*/  action_mutex; int /*<<< orphan*/  action_thread; TYPE_1__ private; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; scalar_t__ priv; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_4__ MMAL_COMPONENT_CORE_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_ENOMEM ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  mmal_component_action_thread_func ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

MMAL_STATUS_T FUNC7(MMAL_COMPONENT_T *component,
                                             void (*pf_action)(MMAL_COMPONENT_T *) )
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;
   VCOS_THREAD_ATTR_T attrs;
   VCOS_STATUS_T status;

   if (private->pf_action)
      return MMAL_EINVAL;

   status = FUNC0(&private->action_event, component->name);
   if (status != VCOS_SUCCESS)
      return MMAL_ENOMEM;

   status = FUNC2(&private->action_mutex, component->name);
   if (status != VCOS_SUCCESS)
   {
      FUNC1(&private->action_event);
      return MMAL_ENOMEM;
   }

   FUNC4(&attrs);
   FUNC5(&attrs,
                                private->private.priority);
   status = FUNC6(&private->action_thread, component->name, &attrs,
                               mmal_component_action_thread_func, component);
   if (status != VCOS_SUCCESS)
   {
      FUNC3(&private->action_mutex);
      FUNC1(&private->action_event);
      return MMAL_ENOMEM;
   }

   private->pf_action = pf_action;
   return MMAL_SUCCESS;
}