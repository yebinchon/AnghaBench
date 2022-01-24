#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int clock_num; TYPE_1__** clock; } ;
struct TYPE_6__ {int /*<<< orphan*/  index; scalar_t__ is_enabled; } ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(MMAL_COMPONENT_T *component)
{
   unsigned i;

   for (i = 0; i < component->clock_num; ++i)
   {
      MMAL_PORT_T *port = component->clock[i];
      if (port->is_enabled)
      {
         FUNC0("stopping clock %d", port->index);
         FUNC2(port);
         FUNC1(port, MMAL_FALSE);
      }
   }
}