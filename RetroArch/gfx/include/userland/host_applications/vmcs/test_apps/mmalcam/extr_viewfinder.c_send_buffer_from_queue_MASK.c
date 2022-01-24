#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_QUEUE_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_PORT_T *port, MMAL_QUEUE_T *queue)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_BUFFER_HEADER_T *buffer;

   if (!queue)
      return MMAL_SUCCESS;

   buffer = FUNC2(queue);

   if (buffer)
   {
      status = FUNC1(port, buffer);

      if (status != MMAL_SUCCESS)
      {
         FUNC3(queue, buffer);
         FUNC0("%s send failed (%i)", port->name, status);
      }
   }

   return status;
}