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
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ connection_num; TYPE_2__** connection; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_GRAPH_T ;
typedef  TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef  TYPE_2__ MMAL_CONNECTION_T ;

/* Variables and functions */
 scalar_t__ GRAPH_CONNECTIONS_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_ENOSPC ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

MMAL_STATUS_T FUNC3(MMAL_GRAPH_T *graph, MMAL_CONNECTION_T *cx)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;

   FUNC1("graph: %p, connection: %s(%p)", graph, cx ? cx->name: 0, cx);

   if (!cx)
      return MMAL_EINVAL;

   if (private->connection_num >= GRAPH_CONNECTIONS_MAX)
   {
      FUNC0("no space for connection %s", cx->name);
      return MMAL_ENOSPC;
   }

   FUNC2(cx);
   private->connection[private->connection_num++] = cx;
   return MMAL_SUCCESS;
}