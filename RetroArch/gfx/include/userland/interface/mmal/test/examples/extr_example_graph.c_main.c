
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * input; int * output; int control; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_1__ MMAL_COMPONENT_T ;


 int CHECK_STATUS (scalar_t__,char*) ;
 int MMAL_COMPONENT_DEFAULT_CONTAINER_READER ;
 int MMAL_COMPONENT_DEFAULT_VIDEO_DECODER ;
 int MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER ;
 scalar_t__ MMAL_SUCCESS ;
 int bcm_host_init () ;
 int fprintf (int ,char*) ;
 int mmal_component_release (TYPE_1__*) ;
 scalar_t__ mmal_graph_create (int **,int ) ;
 int mmal_graph_destroy (int *) ;
 int mmal_graph_disable (int *) ;
 scalar_t__ mmal_graph_enable (int *,int *,int *) ;
 scalar_t__ mmal_graph_new_component (int *,int ,TYPE_1__**) ;
 scalar_t__ mmal_graph_new_connection (int *,int ,int ,int ,int *) ;
 scalar_t__ mmal_util_port_set_uri (int ,char*) ;
 int sleep (int) ;
 int stderr ;

int main(int argc, char **argv)
{
   MMAL_STATUS_T status;
   MMAL_GRAPH_T *graph = 0;
   MMAL_COMPONENT_T *reader = 0, *decoder = 0, *renderer = 0;

   if (argc < 2)
   {
      fprintf(stderr, "invalid arguments\n");
      return -1;
   }

   bcm_host_init();


   status = mmal_graph_create(&graph, 0);
   CHECK_STATUS(status, "failed to create graph");


   status = mmal_graph_new_component(graph, MMAL_COMPONENT_DEFAULT_CONTAINER_READER, &reader);
   CHECK_STATUS(status, "failed to create reader");

   status = mmal_graph_new_component(graph, MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, &decoder);
   CHECK_STATUS(status, "failed to create decoder");

   status = mmal_graph_new_component(graph, MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, &renderer);
   CHECK_STATUS(status, "failed to create renderer");


   status = mmal_util_port_set_uri(reader->control, argv[1]);
   CHECK_STATUS(status, "failed to set uri");


   status = mmal_graph_new_connection(graph, reader->output[0], decoder->input[0], 0, ((void*)0));
   CHECK_STATUS(status, "failed to connect reader to decoder");
   status = mmal_graph_new_connection(graph, decoder->output[0], renderer->input[0], 0, ((void*)0));
   CHECK_STATUS(status, "failed to connect decoder to renderer");


   fprintf(stderr, "start playback\n");
   status = mmal_graph_enable(graph, ((void*)0), ((void*)0));
   CHECK_STATUS(status, "failed to enable graph");

   sleep(5);


   fprintf(stderr, "stop playback\n");
   mmal_graph_disable(graph);

 error:

   if (reader)
      mmal_component_release(reader);
   if (decoder)
      mmal_component_release(decoder);
   if (renderer)
      mmal_component_release(renderer);
   if (graph)
      mmal_graph_destroy(graph);

   return status == MMAL_SUCCESS ? 0 : -1;
}
