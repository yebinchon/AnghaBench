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
struct TYPE_11__ {scalar_t__ is_enabled; } ;
struct TYPE_10__ {int destruction_pending; int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {unsigned int input_num; unsigned int output_num; unsigned int clock_num; int /*<<< orphan*/  id; int /*<<< orphan*/  name; TYPE_1__* priv; TYPE_4__** clock; TYPE_4__** output; TYPE_4__** input; TYPE_4__* control; } ;
struct TYPE_8__ {scalar_t__ refcount; scalar_t__ refcount_ports; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_CORE_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC7(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;
   unsigned int i;

   if (!FUNC6(component->priv->refcount > 0))
      return MMAL_EINVAL;

   FUNC4(&private->lock);
   if (--component->priv->refcount)
   {
      FUNC5(&private->lock);
      return MMAL_SUCCESS;
   }
   private->destruction_pending = 1;
   FUNC5(&private->lock);

   FUNC0("%s %d preparing for destruction", component->name, component->id);

   /* Make sure the ports are all disabled */
   for(i = 0; i < component->input_num; i++)
      if(component->input[i]->is_enabled)
         FUNC2(component->input[i]);
   for(i = 0; i < component->output_num; i++)
      if(component->output[i]->is_enabled)
         FUNC2(component->output[i]);
   for(i = 0; i < component->clock_num; i++)
      if(component->clock[i]->is_enabled)
         FUNC2(component->clock[i]);
   if(component->control->is_enabled)
      FUNC2(component->control);

   /* Make sure all the ports are disconnected. This is necessary to prevent
    * connected ports from referencing destroyed components */
   for(i = 0; i < component->input_num; i++)
      FUNC3(component->input[i]);
   for(i = 0; i < component->output_num; i++)
      FUNC3(component->output[i]);
   for(i = 0; i < component->clock_num; i++)
      FUNC3(component->clock[i]);

   /* If there is any reference pending on the ports we will delay the actual destruction */
   FUNC4(&private->lock);
   if (component->priv->refcount_ports)
   {
      private->destruction_pending = 0;
      FUNC5(&private->lock);
      FUNC0("%s %d delaying destruction", component->name, component->id);
      return MMAL_SUCCESS;
   }
   FUNC5(&private->lock);

   return FUNC1(component);
}