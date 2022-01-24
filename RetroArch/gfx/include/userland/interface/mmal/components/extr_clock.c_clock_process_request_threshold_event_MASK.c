#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int clock_num; int /*<<< orphan*/ * clock; TYPE_2__* priv; } ;
struct TYPE_6__ {TYPE_1__* module; } ;
struct TYPE_5__ {int /*<<< orphan*/  request_threshold; } ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_CLOCK_REQUEST_THRESHOLD_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC1(MMAL_COMPONENT_T *component, const MMAL_CLOCK_REQUEST_THRESHOLD_T *threshold)
{
   unsigned i;

   component->priv->module->request_threshold = *threshold;

   for (i = 0; i < component->clock_num; ++i)
      FUNC0(component->clock[i], threshold);
}