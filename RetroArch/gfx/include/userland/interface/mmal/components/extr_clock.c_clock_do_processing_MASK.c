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
struct TYPE_6__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  latency; int /*<<< orphan*/  request_threshold; int /*<<< orphan*/  discont_threshold; int /*<<< orphan*/  update_threshold; int /*<<< orphan*/  scale; } ;
struct TYPE_5__ {int id; TYPE_2__ data; } ;
struct TYPE_7__ {TYPE_1__ event; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_BOOL_T ;
typedef  TYPE_3__ CLOCK_PORT_EVENT_T ;

/* Variables and functions */
#define  MMAL_CLOCK_EVENT_DISCONT_THRESHOLD 133 
#define  MMAL_CLOCK_EVENT_INPUT_BUFFER_INFO 132 
#define  MMAL_CLOCK_EVENT_LATENCY 131 
#define  MMAL_CLOCK_EVENT_REQUEST_THRESHOLD 130 
#define  MMAL_CLOCK_EVENT_SCALE 129 
#define  MMAL_CLOCK_EVENT_UPDATE_THRESHOLD 128 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_BOOL_T FUNC7(MMAL_COMPONENT_T *component)
{
   CLOCK_PORT_EVENT_T port_event;

   if (FUNC0(component, &port_event) != MMAL_SUCCESS)
      return MMAL_FALSE; /* No more external events to process */

   /* Process external events (coming from clock ports) */
   switch (port_event.event.id)
   {
   case MMAL_CLOCK_EVENT_SCALE:
      FUNC5(component, port_event.event.data.scale);
      break;
   case MMAL_CLOCK_EVENT_UPDATE_THRESHOLD:
      FUNC6(component, &port_event.event.data.update_threshold);
      break;
   case MMAL_CLOCK_EVENT_DISCONT_THRESHOLD:
      FUNC1(component, &port_event.event.data.discont_threshold);
      break;
   case MMAL_CLOCK_EVENT_REQUEST_THRESHOLD:
      FUNC4(component, &port_event.event.data.request_threshold);
      break;
   case MMAL_CLOCK_EVENT_LATENCY:
      FUNC3(component, &port_event.event.data.latency);
      break;
   case MMAL_CLOCK_EVENT_INPUT_BUFFER_INFO:
      FUNC2(component, port_event.port, &port_event.event.data.buffer);
      break;
   default:
      break;
   }

   return MMAL_TRUE;
}