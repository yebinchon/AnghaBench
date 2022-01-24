#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ (* pf_format_commit ) (TYPE_5__*,TYPE_3__*) ;} ;
struct TYPE_20__ {unsigned int output_num; TYPE_5__ graph; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_2__* component; int /*<<< orphan*/  name; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer_num; int /*<<< orphan*/  format; } ;
struct TYPE_18__ {TYPE_3__** output; TYPE_1__* priv; } ;
struct TYPE_17__ {TYPE_4__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_GRAPH_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_PORT_TYPE_INPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 TYPE_3__* FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*,TYPE_3__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC7(MMAL_PORT_T *graph_port)
{
   MMAL_GRAPH_PRIVATE_T *graph_private = graph_port->component->priv->module;
   MMAL_STATUS_T status;
   MMAL_PORT_T *port;
   unsigned int i;

   /* Call user defined function first */
   if (graph_private->graph.pf_format_commit)
   {
      status = graph_private->graph.pf_format_commit(&graph_private->graph, graph_port);
      if (status == MMAL_SUCCESS)
         goto end;
      if (status != MMAL_ENOSYS)
         return status;
   }

   port = FUNC1(graph_private, graph_port);
   if (!port)
      return MMAL_EINVAL;

   /* Update actual port */
   status = FUNC4(port->format, graph_port->format);
   if (status != MMAL_SUCCESS)
      return status;
   port->buffer_num = graph_port->buffer_num;
   port->buffer_size = graph_port->buffer_size;

   /* Forward the call */
   status = FUNC5(port);
   if (status != MMAL_SUCCESS)
      return status;

   /* Propagate format changes to the connections */
   status = FUNC2(graph_private, port);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("couldn't propagate format commit of port %s(%p)", port->name, port);
      return status;
   }

 end:
   /* Read the values back */
   status = FUNC3(graph_private, graph_port, MMAL_FALSE);
   if (status != MMAL_SUCCESS)
      return status;

   /* Get the settings for the output ports in case they have changed */
   if (graph_port->type == MMAL_PORT_TYPE_INPUT)
   {
      for (i = 0; i < graph_private->output_num; i++)
      {
         status = FUNC3(graph_private, graph_port->component->output[i], MMAL_FALSE);
         if (status != MMAL_SUCCESS)
            return status;
      }
   }

   return MMAL_SUCCESS;
}