#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ (* pf_return_buffer ) (TYPE_4__*,TYPE_1__*,TYPE_3__*) ;} ;
struct TYPE_19__ {scalar_t__ cmd; } ;
struct TYPE_18__ {TYPE_4__ graph; } ;
struct TYPE_17__ {scalar_t__ userdata; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_GRAPH_PRIVATE_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ MMAL_ENOSYS ; 
 TYPE_1__* FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_GRAPH_PRIVATE_T *graph_private = (MMAL_GRAPH_PRIVATE_T *)port->userdata;
   MMAL_PORT_T *graph_port;
   MMAL_STATUS_T status;

   graph_port = FUNC0(graph_private, port);
   if (!graph_port)
   {
      FUNC5(0);
      FUNC1(buffer);
      return;
   }

   /* Call user defined function first */
   if (graph_private->graph.pf_return_buffer)
   {
      status = graph_private->graph.pf_return_buffer(&graph_private->graph, graph_port, buffer);
      if (status != MMAL_ENOSYS)
         return;
   }

   /* Forward the callback */
   if (buffer->cmd)
      FUNC3(graph_port, buffer);
   else
      FUNC2(graph_port, buffer);
}