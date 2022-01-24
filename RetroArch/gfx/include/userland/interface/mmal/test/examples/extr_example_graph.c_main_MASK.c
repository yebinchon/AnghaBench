#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * input; int /*<<< orphan*/ * output; int /*<<< orphan*/  control; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_GRAPH_T ;
typedef  TYPE_1__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_CONTAINER_READER ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_VIDEO_DECODER ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC12(int argc, char **argv)
{
   MMAL_STATUS_T status;
   MMAL_GRAPH_T *graph = 0;
   MMAL_COMPONENT_T *reader = 0, *decoder = 0, *renderer = 0;

   if (argc < 2)
   {
      FUNC2(stderr, "invalid arguments\n");
      return -1;
   }

   FUNC1();

   /* Create the graph */
   status = FUNC4(&graph, 0);
   FUNC0(status, "failed to create graph");

   /* Add the components */
   status = FUNC8(graph, MMAL_COMPONENT_DEFAULT_CONTAINER_READER, &reader);
   FUNC0(status, "failed to create reader");

   status = FUNC8(graph, MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, &decoder);
   FUNC0(status, "failed to create decoder");

   status = FUNC8(graph, MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, &renderer);
   FUNC0(status, "failed to create renderer");

   /* Configure the reader using the given URI */
   status = FUNC10(reader->control, argv[1]);
   FUNC0(status, "failed to set uri");

   /* connect them up - this propagates port settings from outputs to inputs */
   status = FUNC9(graph, reader->output[0], decoder->input[0], 0, NULL);
   FUNC0(status, "failed to connect reader to decoder");
   status = FUNC9(graph, decoder->output[0], renderer->input[0], 0, NULL);
   FUNC0(status, "failed to connect decoder to renderer");

   /* Start playback */
   FUNC2(stderr, "start playback\n");
   status = FUNC7(graph, NULL, NULL);
   FUNC0(status, "failed to enable graph");

   FUNC11(5);

   /* Stop everything */
   FUNC2(stderr, "stop playback\n");
   FUNC6(graph);

 error:
   /* Cleanup everything */
   if (reader)
      FUNC3(reader);
   if (decoder)
      FUNC3(decoder);
   if (renderer)
      FUNC3(renderer);
   if (graph)
      FUNC5(graph);

   return status == MMAL_SUCCESS ? 0 : -1;
}