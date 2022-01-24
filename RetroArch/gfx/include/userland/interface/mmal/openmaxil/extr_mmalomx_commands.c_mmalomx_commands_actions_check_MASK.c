#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  actions; } ;
struct TYPE_11__ {int /*<<< orphan*/  request; } ;
struct TYPE_10__ {unsigned int ports_num; size_t state_transition; int /*<<< orphan*/  state; TYPE_4__* ports; } ;
typedef  TYPE_1__ MMALOMX_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMALOMX_ACTION_NOTIFY_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  OMX_CommandStateSet ; 
 int /*<<< orphan*/  OMX_EventCmdComplete ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_4__*) ; 
 TYPE_2__* state_transition_table ; 

void FUNC5(MMALOMX_COMPONENT_T *component)
{
   uint32_t actions_left = 0;
   unsigned int i;

   for (i = 0; i < component->ports_num; i++)
      FUNC4(component, &component->ports[i]);

   FUNC0(component);
   for (i = 0; i < component->ports_num; i++)
      actions_left |= component->ports[i].actions;

   if (!actions_left && component->state_transition)
   {
      component->state = state_transition_table[component->state_transition].request;
      component->state_transition = 0;
      actions_left = MMALOMX_ACTION_NOTIFY_STATE;
   }
   FUNC1(component);

   if (actions_left == MMALOMX_ACTION_NOTIFY_STATE)
   {
      FUNC2(component, OMX_EventCmdComplete,
         OMX_CommandStateSet, component->state, NULL);
      actions_left = 0;
   }

   /* If we're not currently processing a command, we can start processing
    * the next one. */
   if (!actions_left)
      FUNC3(component);
}