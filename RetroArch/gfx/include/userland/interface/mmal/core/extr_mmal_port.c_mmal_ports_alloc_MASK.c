#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int index; } ;
typedef  int /*<<< orphan*/  MMAL_PORT_TYPE_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__** FUNC3 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 

MMAL_PORT_T **FUNC5(MMAL_COMPONENT_T *component, unsigned int ports_num,
   MMAL_PORT_TYPE_T type, unsigned int extra_size)
{
   MMAL_PORT_T **ports;
   unsigned int i;

   ports = FUNC3(1, sizeof(MMAL_PORT_T *) * ports_num, "mmal ports");
   if (!ports)
      return 0;

   for (i = 0; i < ports_num; i++)
   {
      ports[i] = FUNC0(component, type, extra_size);
      if (!ports[i])
         break;
      ports[i]->index = i;
      FUNC2(ports[i]);
   }

   if (i != ports_num)
   {
      for (ports_num = i, i = 0; i < ports_num; i++)
         FUNC1(ports[i]);
      FUNC4(ports);
      return 0;
   }

   return ports;
}