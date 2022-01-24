#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct TYPE_19__ {void* userdata; } ;
struct TYPE_18__ {int /*<<< orphan*/ * input; int /*<<< orphan*/ * output; TYPE_5__* control; } ;
struct TYPE_17__ {int flags; int /*<<< orphan*/  in; int /*<<< orphan*/  queue; int /*<<< orphan*/  out; TYPE_1__* pool; void* callback; TYPE_14__* user_data; } ;
struct TYPE_16__ {int /*<<< orphan*/  queue; } ;
struct TYPE_15__ {scalar_t__ status; int /*<<< orphan*/  semaphore; scalar_t__ eos; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_CONNECTION_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_CONTAINER_READER ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_VIDEO_DECODER ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER ; 
 int MMAL_CONNECTION_FLAG_TUNNELLING ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* connection_callback ; 
 TYPE_14__ context ; 
 int /*<<< orphan*/  control_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned int FUNC14 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(int argc, char **argv)
{
   MMAL_STATUS_T status;
   MMAL_COMPONENT_T *reader = 0, *decoder = 0, *renderer = 0;
   MMAL_CONNECTION_T *connection[2] = {0};
   unsigned int i, count, connection_num = FUNC14(connection);

   if (argc < 2)
   {
      FUNC2(stderr, "invalid arguments\n");
      return -1;
   }

   FUNC1();

   FUNC15(&context.semaphore, "example", 1);

   /* Create the components */
   status = FUNC3(MMAL_COMPONENT_DEFAULT_CONTAINER_READER, &reader);
   FUNC0(status, "failed to create reader");
   reader->control->userdata = (void *)&context;
   status = FUNC10(reader->control, control_callback);
   FUNC0(status, "failed to enable control port");
   status = FUNC5(reader);
   FUNC0(status, "failed to enable component");

   status = FUNC3(MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, &decoder);
   FUNC0(status, "failed to create decoder");
   decoder->control->userdata = (void *)&context;
   status = FUNC10(decoder->control, control_callback);
   FUNC0(status, "failed to enable control port");
   status = FUNC5(decoder);
   FUNC0(status, "failed to enable component");

   status = FUNC3(MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, &renderer);
   FUNC0(status, "failed to create renderer");
   renderer->control->userdata = (void *)&context;
   status = FUNC10(renderer->control, control_callback);
   FUNC0(status, "failed to enable control port");
   status = FUNC5(renderer);
   FUNC0(status, "failed to enable component");

   /* Configure the reader using the given URI */
   status = FUNC13(reader->control, argv[1]);
   FUNC0(status, "failed to set uri");

   /* Create the connections between the components */
   status = FUNC6(&connection[0], reader->output[0], decoder->input[0], 0);
   FUNC0(status, "failed to create connection between reader / decoder");
   connection[0]->user_data = &context;
   connection[0]->callback = connection_callback;
   status = FUNC6(&connection[1], decoder->output[0], renderer->input[0], 0);
   FUNC0(status, "failed to create connection between decoder / renderer");
   connection[1]->user_data = &context;
   connection[1]->callback = connection_callback;

   /* Enable all our connections */
   for (i = connection_num; i; i--)
   {
      status = FUNC9(connection[i-1]);
      FUNC0(status, "failed to enable connection");
   }

   /* Start playback */
   FUNC2(stderr, "start playback\n");

   /* This is the main processing loop */
   for (count = 0; count < 500; count++)
   {
      MMAL_BUFFER_HEADER_T *buffer;
      FUNC17(&context.semaphore);

      /* Check for errors */
      status = context.status;
      FUNC0(status, "error during playback");

      /* Check for end of stream */
      if (context.eos)
         break;

      /* Handle buffers for all our connections */
      for (i = 0; i < connection_num; i++)
      {
         if (connection[i]->flags & MMAL_CONNECTION_FLAG_TUNNELLING)
            continue; /* Nothing else to do in tunnelling mode */

         /* Send empty buffers to the output port of the connection */
         while ((buffer = FUNC12(connection[i]->pool->queue)) != NULL)
         {
            status = FUNC11(connection[i]->out, buffer);
            FUNC0(status, "failed to send buffer");
         }

         /* Send any queued buffer to the next component */
         while ((buffer = FUNC12(connection[i]->queue)) != NULL)
         {
            status = FUNC11(connection[i]->in, buffer);
            FUNC0(status, "failed to send buffer");
         }
      }
   }

   /* Stop everything */
   FUNC2(stderr, "stop playback\n");
   for (i = 0; i < connection_num; i++)
   {
      FUNC8(connection[i]);
   }

 error:
   /* Cleanup everything */
   for (i = 0; i < connection_num; i++)
   {
      if (connection[i])
         FUNC7(connection[i]);
   }
   if (reader)
      FUNC4(reader);
   if (decoder)
      FUNC4(decoder);
   if (renderer)
      FUNC4(renderer);

   FUNC16(&context.semaphore);
   return status == MMAL_SUCCESS ? 0 : -1;
}