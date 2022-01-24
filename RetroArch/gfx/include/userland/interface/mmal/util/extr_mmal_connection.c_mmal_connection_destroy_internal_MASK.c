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
struct TYPE_5__ {int flags; scalar_t__ queue; scalar_t__ pool; int /*<<< orphan*/  name; int /*<<< orphan*/  out; scalar_t__ is_enabled; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_CONNECTION_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MMAL_CONNECTION_FLAG_TUNNELLING ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC6(MMAL_CONNECTION_T *connection)
{
   MMAL_STATUS_T status;

   if (connection->is_enabled)
   {
      status = FUNC1(connection);
      if (status != MMAL_SUCCESS)
         return status;
   }

   /* Special case for tunnelling */
   if (connection->flags & MMAL_CONNECTION_FLAG_TUNNELLING)
   {
      status = FUNC3(connection->out);
      if (status != MMAL_SUCCESS)
         FUNC0("connection %s could not be cleared", connection->name);
   }

   /* Cleanup resources */
   if (connection->pool)
      FUNC2(connection->pool);
   if (connection->queue)
      FUNC4(connection->queue);

   FUNC5(connection);
   return MMAL_SUCCESS;
}