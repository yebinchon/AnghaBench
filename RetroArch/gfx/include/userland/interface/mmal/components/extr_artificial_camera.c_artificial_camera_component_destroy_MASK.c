#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_10__ {unsigned int output_num; TYPE_1__* priv; TYPE_5__** output; } ;
struct TYPE_9__ {TYPE_2__* module; } ;
struct TYPE_8__ {scalar_t__ queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__**,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC3(MMAL_COMPONENT_T *component)
{
   unsigned int i;

   for (i = 0; i < component->output_num; i++)
      if (component->output[i]->priv->module->queue)
         FUNC1(component->output[i]->priv->module->queue);

   if(component->output_num)
      FUNC0(component->output, component->output_num);

   FUNC2(component->priv->module);
   return MMAL_SUCCESS;
}