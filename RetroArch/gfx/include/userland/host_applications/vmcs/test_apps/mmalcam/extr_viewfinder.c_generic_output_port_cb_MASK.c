#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ cmd; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; scalar_t__ userdata; } ;
typedef  int /*<<< orphan*/  MMAL_QUEUE_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MMAL_CAM_BUFFER_READY ; 
 int /*<<< orphan*/  VCOS_OR ; 
 int /*<<< orphan*/  events ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   if (buffer->cmd != 0)
   {
      FUNC1("%s callback: event %u not supported", port->name, buffer->cmd);
      FUNC2(buffer);
   }
   else
   {
      MMAL_QUEUE_T *queue = (MMAL_QUEUE_T *)port->userdata;

      FUNC0("%s callback", port->name);
      FUNC3(queue, buffer);
   }

   FUNC4(&events, MMAL_CAM_BUFFER_READY, VCOS_OR);
}