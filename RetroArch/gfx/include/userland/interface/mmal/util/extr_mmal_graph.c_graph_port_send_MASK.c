#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ (* pf_send_buffer ) (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_15__ {TYPE_5__ graph; } ;
struct TYPE_14__ {TYPE_2__* component; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {TYPE_4__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_GRAPH_PRIVATE_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOSYS ; 
 TYPE_3__* FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC3(MMAL_PORT_T *graph_port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_GRAPH_PRIVATE_T *graph_private = graph_port->component->priv->module;
   MMAL_STATUS_T status;
   MMAL_PORT_T *port;

   port = FUNC0(graph_port->component->priv->module, graph_port);
   if (!port)
      return MMAL_EINVAL;

   /* Call user defined function first */
   if (graph_private->graph.pf_send_buffer)
   {
      status = graph_private->graph.pf_send_buffer(&graph_private->graph, graph_port, buffer);
      if (status != MMAL_ENOSYS)
         return status;
   }

   /* Forward the call */
   return FUNC1(port, buffer);
}