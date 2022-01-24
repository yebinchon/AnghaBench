#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {unsigned int output_num; TYPE_2__** output; } ;
struct TYPE_16__ {unsigned int connection_num; TYPE_1__** connection; } ;
struct TYPE_15__ {scalar_t__ type; int /*<<< orphan*/  format; scalar_t__ is_enabled; int /*<<< orphan*/  name; TYPE_4__* component; } ;
struct TYPE_14__ {TYPE_2__* out; TYPE_2__* in; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_GRAPH_PRIVATE_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ MMAL_PORT_TYPE_CLOCK ; 
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC5(MMAL_GRAPH_PRIVATE_T *graph,
   MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_STATUS_T status = MMAL_SUCCESS;
   unsigned int i, j;

   FUNC0("graph: %p, port %s(%p)", graph, port->name, port);

   if (port->type == MMAL_PORT_TYPE_OUTPUT || port->type == MMAL_PORT_TYPE_CLOCK)
      return MMAL_SUCCESS; /* Nothing to do */

   /* Loop through all the output ports of the component and if they are not enabled and
    * match one of the connections we maintain, then we need to propagate the format change. */
   for (i = 0; i < component->output_num; i++)
   {
      MMAL_PORT_T *in, *out;

      if (component->output[i]->is_enabled)
         continue;

      /* Find the matching connection */
      for (j = 0; j < graph->connection_num; j++)
         if (graph->connection[j]->out == component->output[i])
            break;

      if (j == graph->connection_num)
         continue; /* No match */

      if (!FUNC1(graph, port, component->output[i]))
         continue; /* Ports are independent */

      in = graph->connection[j]->in;
      out = graph->connection[j]->out;

      /* Apply the format to the input port */
      status = FUNC2(in->format, out->format);
      if (status != MMAL_SUCCESS)
         break;
      status = FUNC4(in);
      if (status != MMAL_SUCCESS)
         break;

      FUNC3(out);
      FUNC3(in);

      status = FUNC5(graph, in);
      if (status != MMAL_SUCCESS)
         break;
   }

   return status;
}