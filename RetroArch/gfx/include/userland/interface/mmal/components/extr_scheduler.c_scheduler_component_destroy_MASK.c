#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {unsigned int input_num; unsigned int output_num; TYPE_3__* priv; scalar_t__ clock_num; int /*<<< orphan*/  clock; TYPE_6__** output; TYPE_6__** input; } ;
struct TYPE_9__ {int /*<<< orphan*/  module; } ;
struct TYPE_8__ {TYPE_1__* module; } ;
struct TYPE_7__ {scalar_t__ queue; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__**,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_COMPONENT_T *component)
{
   unsigned int i;

   for (i = 0; i < component->input_num; i++)
      if (component->input[i]->priv->module->queue)
         FUNC2(component->input[i]->priv->module->queue);
   if (component->input_num)
      FUNC1(component->input, component->input_num);

   for (i = 0; i < component->output_num; i++)
      if (component->output[i]->priv->module->queue)
         FUNC2(component->output[i]->priv->module->queue);
   if (component->output_num)
      FUNC1(component->output, component->output_num);

   if (component->clock_num)
      FUNC0(component->clock, component->clock_num);

   FUNC3(component->priv->module);
   return MMAL_SUCCESS;
}