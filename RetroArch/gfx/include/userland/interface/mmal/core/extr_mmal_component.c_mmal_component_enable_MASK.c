#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int is_enabled; unsigned int input_num; unsigned int output_num; int /*<<< orphan*/ * output; int /*<<< orphan*/ * input; TYPE_1__* priv; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ (* pf_enable ) (TYPE_2__*) ;} ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_CORE_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

MMAL_STATUS_T FUNC5(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private;
   MMAL_STATUS_T status = MMAL_ENOSYS;
   unsigned int i;

   if(!component)
      return MMAL_EINVAL;

   private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;

   FUNC0("%s %d", component->name, component->id);

   FUNC3(&private->lock);

   /* Check we have anything to do */
   if (component->is_enabled)
   {
      FUNC4(&private->lock);
      return MMAL_SUCCESS;
   }

   if (component->priv->pf_enable)
      status = component->priv->pf_enable(component);

   /* If the component does not support enable/disable, we handle that
    * in the core itself */
   if (status == MMAL_ENOSYS)
   {
      status = MMAL_SUCCESS;

      /* Resume all input / output ports */
      for (i = 0; status == MMAL_SUCCESS && i < component->input_num; i++)
         status = FUNC1(component->input[i], MMAL_FALSE);
      for (i = 0; status == MMAL_SUCCESS && i < component->output_num; i++)
         status = FUNC1(component->output[i], MMAL_FALSE);
   }

   if (status == MMAL_SUCCESS)
      component->is_enabled = 1;

   FUNC4(&private->lock);

   return status;
}