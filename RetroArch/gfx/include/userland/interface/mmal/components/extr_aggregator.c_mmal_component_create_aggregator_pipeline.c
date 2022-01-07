
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct MMAL_COMPONENT_MODULE_T {int dummy; } ;
struct TYPE_16__ {int input_num; int output_num; TYPE_1__* priv; scalar_t__* output; scalar_t__* input; } ;
struct TYPE_15__ {int pf_parameter_set; int pf_parameter_get; } ;
struct TYPE_14__ {struct MMAL_COMPONENT_MODULE_T* module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_GRAPH_USERDATA_T ;
typedef TYPE_2__ MMAL_GRAPH_T ;
typedef int MMAL_CONNECTION_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 scalar_t__ MMAL_ENOMEM ;
 scalar_t__ MMAL_SUCCESS ;
 int aggregator_parameter_get ;
 int aggregator_parameter_set ;
 int memcpy (char*,char const*,unsigned int) ;
 scalar_t__ mmal_component_create (char const*,TYPE_3__**) ;
 int mmal_component_destroy (TYPE_3__*) ;
 scalar_t__ mmal_connection_create (int **,scalar_t__,scalar_t__,int ) ;
 int mmal_connection_destroy (int *) ;
 scalar_t__ mmal_graph_add_component (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ mmal_graph_add_connection (TYPE_2__*,int *) ;
 scalar_t__ mmal_graph_add_port (TYPE_2__*,scalar_t__) ;
 scalar_t__ mmal_graph_component_constructor (char const*,TYPE_3__*) ;
 scalar_t__ mmal_graph_create (TYPE_2__**,int) ;
 int mmal_graph_destroy (TYPE_2__*) ;
 unsigned int strlen (char const*) ;
 char* vcos_calloc (int,unsigned int,char*) ;
 int vcos_free (char*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_create_aggregator_pipeline(const char *full_name,
   const char *component_names, MMAL_COMPONENT_T *component)
{
   MMAL_GRAPH_T *graph = 0;
   MMAL_COMPONENT_T *subcomponent[2] = {0};
   MMAL_STATUS_T status = MMAL_ENOMEM;
   unsigned int length;
   char *orig, *names;

   length = strlen(component_names);
   names = orig = vcos_calloc(1, length + 1, "mmal aggregator");
   if (!names)
      goto error;
   memcpy(names, component_names, length);


   status = mmal_graph_create(&graph, sizeof(MMAL_GRAPH_USERDATA_T));
   if (status != MMAL_SUCCESS)
      goto error;
   graph->pf_parameter_get = aggregator_parameter_get;
   graph->pf_parameter_set = aggregator_parameter_set;


   while (*names)
   {
      MMAL_CONNECTION_T *connection;
      const char *name;


      if (subcomponent[0])
         mmal_component_destroy(subcomponent[0]);
      subcomponent[0] = subcomponent[1];
      subcomponent[1] = 0;


      for (name = names; *names && *names != ':'; names++);


      if (*names)
         *(names++) = 0;


      if (!*name)
         continue;

      status = mmal_component_create(name, &subcomponent[1]);
      if (status != MMAL_SUCCESS)
         goto error;

      status = mmal_graph_add_component(graph, subcomponent[1]);
      if (status != MMAL_SUCCESS)
         goto error;


      if (!subcomponent[0])
      {

         if (subcomponent[1]->input_num)
         {
            status = mmal_graph_add_port(graph, subcomponent[1]->input[0]);
            if (status != MMAL_SUCCESS)
               goto error;
         }
         continue;
      }


      if (subcomponent[0]->output_num < 1 || subcomponent[1]->input_num < 1)
         goto error;
      status = mmal_connection_create(&connection, subcomponent[0]->output[0],
         subcomponent[1]->input[0], 0);
      if (status != MMAL_SUCCESS)
         goto error;

      status = mmal_graph_add_connection(graph, connection);

      mmal_connection_destroy(connection);
      if (status != MMAL_SUCCESS)
         goto error;
   }


   if (subcomponent[1] && subcomponent[1]->output_num && subcomponent[1]->output[0])
   {
      status = mmal_graph_add_port(graph, subcomponent[1]->output[0]);
      if (status != MMAL_SUCCESS)
         goto error;
   }


   component->priv->module = (struct MMAL_COMPONENT_MODULE_T *)graph;
   status = mmal_graph_component_constructor(full_name, component);
   if (status != MMAL_SUCCESS)
      goto error;

 end:
   if (subcomponent[0])
      mmal_component_destroy(subcomponent[0]);
   if (subcomponent[1])
      mmal_component_destroy(subcomponent[1]);
   vcos_free(orig);
   return status;

 error:
   if (graph)
      mmal_graph_destroy(graph);
   goto end;
}
