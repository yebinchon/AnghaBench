#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {scalar_t__ type; size_t index; int /*<<< orphan*/  name; scalar_t__ userdata; } ;
struct TYPE_6__ {scalar_t__ status; int /*<<< orphan*/ ** output_queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  sema; TYPE_1__ wrapper; } ;
typedef  TYPE_1__ MMAL_WRAPPER_T ;
typedef  TYPE_2__ MMAL_WRAPPER_PRIVATE_T ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_QUEUE_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_EAGAIN ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int MMAL_WRAPPER_FLAG_WAIT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

MMAL_STATUS_T FUNC3(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T **buffer,
   uint32_t flags)
{
   MMAL_WRAPPER_PRIVATE_T *private = (MMAL_WRAPPER_PRIVATE_T *)port->userdata;
   MMAL_WRAPPER_T *wrapper = &private->wrapper;
   MMAL_QUEUE_T *queue;

   FUNC0("%p, %s", wrapper, port->name);

   if (!buffer || port->type != MMAL_PORT_TYPE_OUTPUT)
      return MMAL_EINVAL;
   queue = wrapper->output_queue[port->index];

   while (wrapper->status == MMAL_SUCCESS &&
          (*buffer = FUNC1(queue)) == NULL)
   {
      if (!(flags & MMAL_WRAPPER_FLAG_WAIT))
         break;
      FUNC2(&private->sema);
   }

   return wrapper->status == MMAL_SUCCESS && !*buffer ? MMAL_EAGAIN : wrapper->status;
}