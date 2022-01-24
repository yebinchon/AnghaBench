#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ connection_num; int /*<<< orphan*/ ** connection; } ;
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_GRAPH_T ;
typedef  TYPE_2__ MMAL_GRAPH_PRIVATE_T ;
typedef  int /*<<< orphan*/  MMAL_CONNECTION_T ;

/* Variables and functions */
 scalar_t__ GRAPH_CONNECTIONS_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ **) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOSPC ; 
 scalar_t__ MMAL_PORT_TYPE_CLOCK ; 
 scalar_t__ MMAL_PORT_TYPE_INPUT ; 
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,TYPE_1__*,TYPE_1__*,scalar_t__) ; 

MMAL_STATUS_T FUNC4(MMAL_GRAPH_T *graph, MMAL_PORT_T *out, MMAL_PORT_T *in,
   uint32_t flags, MMAL_CONNECTION_T **connection)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;
   MMAL_CONNECTION_T *cx;
   MMAL_STATUS_T status;

   if (!out || !in)
      return MMAL_EINVAL;
   if (out->type == MMAL_PORT_TYPE_CLOCK && in->type != MMAL_PORT_TYPE_CLOCK)
      return MMAL_EINVAL;
   if (out->type != MMAL_PORT_TYPE_CLOCK &&
       (out->type != MMAL_PORT_TYPE_OUTPUT || in->type != MMAL_PORT_TYPE_INPUT))
      return MMAL_EINVAL;

   FUNC1("graph: %p, out: %s(%p), in: %s(%p), flags %x, connection: %p",
             graph, out->name, out, in->name, in, (int)flags, connection);

   if (private->connection_num >= GRAPH_CONNECTIONS_MAX)
   {
      FUNC0("no space for connection %s/%s", out->name, in->name);
      return MMAL_ENOSPC;
   }

   status = FUNC3(&cx, out, in, flags);
   if (status != MMAL_SUCCESS)
      return status;

   private->connection[private->connection_num++] = cx;
   if (connection)
   {
      FUNC2(cx);
      *connection = cx;
   }

   return MMAL_SUCCESS;
}