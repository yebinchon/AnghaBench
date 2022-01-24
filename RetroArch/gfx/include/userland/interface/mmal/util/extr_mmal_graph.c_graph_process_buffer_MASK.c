#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  name; } ;
struct TYPE_22__ {scalar_t__ (* pf_connection_buffer ) (TYPE_4__*,TYPE_2__*,TYPE_3__*) ;} ;
struct TYPE_21__ {scalar_t__ cmd; } ;
struct TYPE_20__ {TYPE_14__* out; TYPE_7__* in; } ;
struct TYPE_19__ {TYPE_4__ graph; } ;
struct TYPE_18__ {int /*<<< orphan*/  component; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef  TYPE_2__ MMAL_CONNECTION_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_14__*,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_ENOSYS ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_14__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_7__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_4__*,TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(MMAL_GRAPH_PRIVATE_T *graph_private,
   MMAL_CONNECTION_T *connection, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_STATUS_T status;

   /* Call user defined function first */
   if (graph_private->graph.pf_connection_buffer)
   {
      status = graph_private->graph.pf_connection_buffer(&graph_private->graph, connection, buffer);
      if (status != MMAL_ENOSYS)
         return;
   }

   if (buffer->cmd)
   {
      FUNC1(connection, connection->out, buffer);
      return;
   }

   status = FUNC4(connection->in, buffer);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("%s(%p) could not send buffer to %s(%p) (%s)",
                connection->out->name, connection->out,
                connection->in->name, connection->in,
                FUNC5(status));
      FUNC2(buffer);
      FUNC3(connection->out->component, status);
   }
}