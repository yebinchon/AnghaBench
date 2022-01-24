#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {scalar_t__ headers_num; int /*<<< orphan*/  queue; } ;
struct TYPE_10__ {scalar_t__ type; size_t index; int /*<<< orphan*/  is_enabled; int /*<<< orphan*/  name; scalar_t__ userdata; } ;
struct TYPE_8__ {scalar_t__ time_disable; int /*<<< orphan*/ ** output_queue; TYPE_4__** output_pool; } ;
struct TYPE_9__ {TYPE_1__ wrapper; } ;
typedef  TYPE_1__ MMAL_WRAPPER_T ;
typedef  TYPE_2__ MMAL_WRAPPER_PRIVATE_T ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_QUEUE_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_POOL_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_PORT_TYPE_INPUT ; 
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

MMAL_STATUS_T FUNC8(MMAL_PORT_T *port)
{
   MMAL_WRAPPER_PRIVATE_T *private = (MMAL_WRAPPER_PRIVATE_T *)port->userdata;
   MMAL_WRAPPER_T *wrapper = &private->wrapper;
   int64_t start_time = FUNC6();
   MMAL_STATUS_T status;

   FUNC1("%p, %s", wrapper, port->name);

   if (port->type != MMAL_PORT_TYPE_INPUT && port->type != MMAL_PORT_TYPE_OUTPUT)
      return MMAL_EINVAL;

   if (!port->is_enabled)
      return MMAL_SUCCESS;

   /* Disable port */
   status = FUNC3(port);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("could not disable port");
      return status;
   }

   /* Flush the queue */
   if (port->type == MMAL_PORT_TYPE_OUTPUT)
   {
      MMAL_POOL_T *pool = wrapper->output_pool[port->index];
      MMAL_QUEUE_T *queue = wrapper->output_queue[port->index];
      MMAL_BUFFER_HEADER_T *buffer;

      while ((buffer = FUNC4(queue)) != NULL)
         FUNC2(buffer);

      if ( !FUNC7(FUNC5(pool->queue) == pool->headers_num) )
      {
         FUNC0("coul dnot release all buffers");
      }
   }

   wrapper->time_disable = FUNC6() - start_time;
   return status;
}