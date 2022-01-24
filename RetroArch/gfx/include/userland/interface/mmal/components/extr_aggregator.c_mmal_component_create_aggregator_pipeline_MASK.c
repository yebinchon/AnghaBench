#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct MMAL_COMPONENT_MODULE_T {int dummy; } ;
struct TYPE_16__ {int input_num; int output_num; TYPE_1__* priv; scalar_t__* output; scalar_t__* input; } ;
struct TYPE_15__ {int /*<<< orphan*/  pf_parameter_set; int /*<<< orphan*/  pf_parameter_get; } ;
struct TYPE_14__ {struct MMAL_COMPONENT_MODULE_T* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_GRAPH_USERDATA_T ;
typedef  TYPE_2__ MMAL_GRAPH_T ;
typedef  int /*<<< orphan*/  MMAL_CONNECTION_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;

/* Variables and functions */
 scalar_t__ MMAL_ENOMEM ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  aggregator_parameter_get ; 
 int /*<<< orphan*/  aggregator_parameter_set ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned int) ; 
 scalar_t__ FUNC1 (char const*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC8 (char const*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 unsigned int FUNC11 (char const*) ; 
 char* FUNC12 (int,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC14(const char *full_name,
   const char *component_names, MMAL_COMPONENT_T *component)
{
   MMAL_GRAPH_T *graph = 0;
   MMAL_COMPONENT_T *subcomponent[2] = {0};
   MMAL_STATUS_T status = MMAL_ENOMEM;
   unsigned int length;
   char *orig, *names;

   length = FUNC11(component_names);
   names = orig = FUNC12(1, length + 1, "mmal aggregator");
   if (!names)
      goto error;
   FUNC0(names, component_names, length);

   /* We'll build the aggregator using a graph */
   status = FUNC9(&graph, sizeof(MMAL_GRAPH_USERDATA_T));
   if (status != MMAL_SUCCESS)
      goto error;
   graph->pf_parameter_get = aggregator_parameter_get;
   graph->pf_parameter_set = aggregator_parameter_set;

   /* Iterate through all the specified components */
   while (*names)
   {
      MMAL_CONNECTION_T *connection;
      const char *name;

      /* Switch to a new connection */
      if (subcomponent[0])
         FUNC2(subcomponent[0]);
      subcomponent[0] = subcomponent[1];
      subcomponent[1] = 0;

      /* Extract the name of the next component */
      for (name = names; *names && *names != ':'; names++);

      /* Replace the separator */
      if (*names)
         *(names++) = 0;

      /* Skip empty strings */
      if (!*name)
         continue;

      status = FUNC1(name, &subcomponent[1]);
      if (status != MMAL_SUCCESS)
         goto error;

      status = FUNC5(graph, subcomponent[1]);
      if (status != MMAL_SUCCESS)
         goto error;

      /* Special case for dealing with the first component in the chain */
      if (!subcomponent[0])
      {
         /* Add first input port if any */
         if (subcomponent[1]->input_num)
         {
            status = FUNC7(graph, subcomponent[1]->input[0]);
            if (status != MMAL_SUCCESS)
               goto error;
         }
         continue;
      }

      /* Create connection between the 2 ports */
      if (subcomponent[0]->output_num < 1 || subcomponent[1]->input_num < 1)
         goto error;
      status = FUNC3(&connection, subcomponent[0]->output[0],
         subcomponent[1]->input[0], 0);
      if (status != MMAL_SUCCESS)
         goto error;

      status = FUNC6(graph, connection);
      /* Now the connection is added to the graph we don't care about it anymore */
      FUNC4(connection);
      if (status != MMAL_SUCCESS)
         goto error;
   }

   /* Add last output port if any */
   if (subcomponent[1] && subcomponent[1]->output_num && subcomponent[1]->output[0])
   {
      status = FUNC7(graph, subcomponent[1]->output[0]);
      if (status != MMAL_SUCCESS)
         goto error;
   }

   /* Build the graph */
   component->priv->module = (struct MMAL_COMPONENT_MODULE_T *)graph;
   status = FUNC8(full_name, component);
   if (status != MMAL_SUCCESS)
      goto error;

 end:
   if (subcomponent[0])
      FUNC2(subcomponent[0]);
   if (subcomponent[1])
      FUNC2(subcomponent[1]);
   FUNC13(orig);
   return status;

 error:
   if (graph)
      FUNC10(graph);
   goto end;
}