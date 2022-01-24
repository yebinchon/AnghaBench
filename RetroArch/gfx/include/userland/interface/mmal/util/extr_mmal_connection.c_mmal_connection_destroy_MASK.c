#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ refcount; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_CONNECTION_T ;
typedef  TYPE_2__ MMAL_CONNECTION_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

MMAL_STATUS_T FUNC3(MMAL_CONNECTION_T *connection)
{
   MMAL_CONNECTION_PRIVATE_T *private = (MMAL_CONNECTION_PRIVATE_T *)connection;

   FUNC1("%p, %s", connection, connection->name);

   if (--private->refcount)
   {
      FUNC0("delaying destruction of %s (refount %i)", connection->name,
                private->refcount);
      return MMAL_SUCCESS;
   }

   return FUNC2(connection);
}