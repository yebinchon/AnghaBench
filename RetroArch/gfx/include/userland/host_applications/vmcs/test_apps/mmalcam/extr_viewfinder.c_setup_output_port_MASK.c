#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; void* userdata; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer_num; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_QUEUE_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_POOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_ENOMEM ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  generic_output_port_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC6(MMAL_PORT_T *output_port, MMAL_QUEUE_T **p_queue, MMAL_POOL_T **p_pool)
{
   MMAL_STATUS_T status = MMAL_ENOMEM;
   MMAL_QUEUE_T *queue = NULL;
   MMAL_POOL_T *pool = NULL;

   /* Create a queue for frames filled by the output port.
    * The main loop will pass these on to the input port. */
   queue = FUNC4();
   if (!queue)
   {
      FUNC0("failed to create queue for %s", output_port->name);
      goto error;
   }

   /* Create pool of buffer headers for the output port to consume */
   pool = FUNC3(output_port, output_port->buffer_num, output_port->buffer_size);
   if (!pool)
   {
      FUNC0("failed to create pool for %s", output_port->name);
      goto error;
   }

   output_port->userdata = (void *)queue;

   status = FUNC2(output_port, generic_output_port_cb);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("failed to enable %s", output_port->name);
      goto error;
   }

   *p_queue = queue;
   *p_pool = pool;

   return MMAL_SUCCESS;

error:
   if (queue)
      FUNC5(queue);
   if (pool)
      FUNC1(pool);

   return status;
}