#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int is_enabled; void* time_disable; int flags; TYPE_1__* pool; int /*<<< orphan*/  queue; int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {scalar_t__ headers_num; int /*<<< orphan*/  queue; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_CONNECTION_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int MMAL_CONNECTION_FLAG_TUNNELLING ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 () ; 

MMAL_STATUS_T FUNC8(MMAL_CONNECTION_T *connection)
{
   MMAL_STATUS_T status;
   MMAL_BUFFER_HEADER_T *buffer;

   FUNC1("%p, %s", connection, connection->name);

   if (!connection->is_enabled)
      return MMAL_SUCCESS;

   connection->time_disable = FUNC7();

   /* Special case for tunnelling */
   if (connection->flags & MMAL_CONNECTION_FLAG_TUNNELLING)
   {
      /* Disable port. Other end of the connection will be disabled automatically. */
      status = FUNC3(connection->out);
      if (status)
         FUNC0("output port couldn't be disabled");
      goto done;
   }

   /* Disable input port. */
   status = FUNC3(connection->in);
   if(status)
   {
      FUNC0("input port couldn't be disabled");
      goto done;
   }

   /* Disable output port */
   status = FUNC3(connection->out);
   if(status)
   {
      FUNC0("output port couldn't be disabled");
      goto done;
   }

   /* Flush the queue */
   buffer = FUNC4(connection->queue);
   while (buffer)
   {
      FUNC2(buffer);
      buffer = FUNC4(connection->queue);
   }
   FUNC6(FUNC5(connection->pool->queue) == connection->pool->headers_num);

 done:
   connection->time_disable = FUNC7() - connection->time_disable;
   connection->is_enabled = !(status == MMAL_SUCCESS);
   return status;
}