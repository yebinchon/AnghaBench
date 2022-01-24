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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

MMAL_PORT_T* FUNC3(MMAL_COMPONENT_T *component, unsigned int extra_size,
                                   MMAL_PORT_CLOCK_EVENT_CB event_cb)
{
   MMAL_PORT_T *port;

   port = FUNC0(component, MMAL_PORT_TYPE_CLOCK,
                          extra_size + sizeof(MMAL_PORT_CLOCK_T));
   if (!port)
      return NULL;

   if (FUNC1(port, extra_size, event_cb) != MMAL_SUCCESS)
   {
      FUNC2(port);
      return NULL;
   }

   return port;
}