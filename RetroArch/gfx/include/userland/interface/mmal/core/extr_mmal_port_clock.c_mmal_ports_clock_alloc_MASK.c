#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_CLOCK_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_CLOCK_EVENT_CB ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_PORT_TYPE_CLOCK ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 

MMAL_PORT_T **FUNC4(MMAL_COMPONENT_T *component, unsigned int ports_num,
                                     unsigned int extra_size, MMAL_PORT_CLOCK_EVENT_CB event_cb)
{
   unsigned int i;
   MMAL_PORT_T **ports;

   ports = FUNC2(component, ports_num, MMAL_PORT_TYPE_CLOCK,
                            extra_size + sizeof(MMAL_PORT_CLOCK_T));
   if (!ports)
      return NULL;

   for (i = 0; i < ports_num; i++)
   {
      if (FUNC1(ports[i], extra_size, event_cb) != MMAL_SUCCESS)
         break;
   }

   if (i != ports_num)
   {
      for (ports_num = i, i = 0; i < ports_num; i++)
         FUNC0(ports[i]);
      FUNC3(ports);
      return NULL;
   }

   return ports;
}