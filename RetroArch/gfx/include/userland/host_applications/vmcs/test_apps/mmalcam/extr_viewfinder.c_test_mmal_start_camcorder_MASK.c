#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_6__ ;
typedef  struct TYPE_46__   TYPE_5__ ;
typedef  struct TYPE_45__   TYPE_4__ ;
typedef  struct TYPE_44__   TYPE_3__ ;
typedef  struct TYPE_43__   TYPE_39__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;
typedef  struct TYPE_40__   TYPE_13__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int VCOS_UNSIGNED ;
struct TYPE_43__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_47__ {scalar_t__ init_result; char* uri; int seconds_per_change; int change; int /*<<< orphan*/  init_sem; TYPE_39__ encoder_stats; TYPE_39__ render_stats; int /*<<< orphan*/  focus_test; int /*<<< orphan*/  tunneling; int /*<<< orphan*/  zero_copy; } ;
struct TYPE_46__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_45__ {TYPE_2__** output; TYPE_2__** input; } ;
struct TYPE_41__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_44__ {int member_1; int /*<<< orphan*/  hdr; TYPE_1__ member_0; } ;
struct TYPE_42__ {TYPE_13__* format; } ;
struct TYPE_40__ {scalar_t__ encoding; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_QUEUE_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_POOL_T ;
typedef  TYPE_3__ MMAL_PARAMETER_BOOLEAN_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;
typedef  TYPE_5__ MMAL_BUFFER_HEADER_T ;
typedef  TYPE_6__ MMALCAM_BEHAVIOUR_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_39__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int MAX_PACKET_COUNT ; 
#define  MMALCAM_CHANGE_BRIGHTNESS 137 
#define  MMALCAM_CHANGE_CONTRAST 136 
#define  MMALCAM_CHANGE_DRC 135 
#define  MMALCAM_CHANGE_FOCUS 134 
#define  MMALCAM_CHANGE_HDR 133 
#define  MMALCAM_CHANGE_IMAGE_EFFECT 132 
#define  MMALCAM_CHANGE_ROTATION 131 
#define  MMALCAM_CHANGE_SATURATION 130 
#define  MMALCAM_CHANGE_SHARPNESS 129 
#define  MMALCAM_CHANGE_ZOOM 128 
 scalar_t__ MMALCAM_INIT_ERROR_CAMERA ; 
 scalar_t__ MMALCAM_INIT_ERROR_CAMERA_CAPTURE ; 
 scalar_t__ MMALCAM_INIT_ERROR_ENCODER ; 
 scalar_t__ MMALCAM_INIT_ERROR_ENCODER_IN ; 
 scalar_t__ MMALCAM_INIT_ERROR_ENCODER_OUT ; 
 scalar_t__ MMALCAM_INIT_ERROR_EVENT_FLAGS ; 
 scalar_t__ MMALCAM_INIT_ERROR_RENDER ; 
 scalar_t__ MMALCAM_INIT_ERROR_VIEWFINDER ; 
 scalar_t__ MMALCAM_INIT_SUCCESS ; 
 int /*<<< orphan*/  MMAL_CAM_ANY_EVENT ; 
 int MMAL_CAM_AUTOFOCUS_COMPLETE ; 
 scalar_t__ MMAL_ENCODING_JPEG ; 
 scalar_t__ MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_PARAMETER_BRIGHTNESS ; 
 int /*<<< orphan*/  MMAL_PARAMETER_CAPTURE ; 
 int /*<<< orphan*/  MMAL_PARAMETER_CONTRAST ; 
 int /*<<< orphan*/  MMAL_PARAMETER_SATURATION ; 
 int /*<<< orphan*/  MMAL_PARAMETER_SHARPNESS ; 
 int /*<<< orphan*/  MMAL_PARAMETER_STATISTICS ; 
 int /*<<< orphan*/  MMAL_PARAM_FOCUS_MAX ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  VCOS_OR_CONSUME ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  events ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int) ; 
 scalar_t__ FUNC29 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_4__* FUNC31 (TYPE_6__*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC32 (char*,TYPE_13__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_4__* FUNC34 (TYPE_6__*,scalar_t__*) ; 
 TYPE_4__* FUNC35 (TYPE_6__*,scalar_t__*) ; 
 int /*<<< orphan*/  tunneling ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zero_copy ; 

int FUNC42(volatile int *stop, MMALCAM_BEHAVIOUR_T *behaviour)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_POOL_T *pool_viewfinder = 0, *pool_encoder_in = 0, *pool_encoder_out = 0;
   MMAL_QUEUE_T *queue_viewfinder = 0, *queue_encoder_in = 0, *queue_encoder_out = 0;
   MMAL_COMPONENT_T *camera = 0, *encoder = 0, *render = 0;
   MMAL_PORT_T *viewfinder_port = 0, *video_port = 0, *still_port = 0;
   MMAL_PORT_T *render_port = 0, *encoder_input = 0, *encoder_output = 0;
   uint32_t ms_per_change, last_change_ms, set_focus_delay_ms;
   int packet_count = 0;
#if USE_CONTAINER
   VC_CONTAINER_T *container = 0;
#endif
   FILE *output = NULL;

   if(FUNC37(&events, "MMALCam") != VCOS_SUCCESS)
   {
      behaviour->init_result = MMALCAM_INIT_ERROR_EVENT_FLAGS;
      goto error;
   }

   zero_copy = behaviour->zero_copy;
   tunneling = behaviour->tunneling;

   /* Create and setup camera viewfinder component */
   camera = FUNC31(behaviour, &status);
   if(!camera)
   {
      behaviour->init_result = MMALCAM_INIT_ERROR_CAMERA;
      goto error;
   }
   viewfinder_port = camera->output[0];
   video_port = camera->output[1];
   still_port = camera->output[2];

   /* Create and setup video render component */
   render = FUNC35(behaviour, &status);
   if(!render)
   {
      behaviour->init_result = MMALCAM_INIT_ERROR_RENDER;
      goto error;
   }
   render_port = render->input[0];

   status = FUNC3(viewfinder_port, render_port, &queue_viewfinder, &pool_viewfinder);
   if (status != MMAL_SUCCESS)
   {
      behaviour->init_result = MMALCAM_INIT_ERROR_VIEWFINDER;
      goto error;
   }

   if (behaviour->uri)
   {
      MMAL_PARAMETER_BOOLEAN_T camera_capture =
            {{MMAL_PARAMETER_CAPTURE, sizeof(MMAL_PARAMETER_BOOLEAN_T)}, 1};

      /* Create and setup video encoder component */
      encoder = FUNC34(behaviour, &status);
      if(!encoder)
      {
         behaviour->init_result = MMALCAM_INIT_ERROR_ENCODER;
         goto error;
      }
      encoder_input = encoder->input[0];
      encoder_output = encoder->output[0];

      if (encoder_output->format->encoding == MMAL_ENCODING_JPEG)
         video_port = still_port;

      status = FUNC3(video_port, encoder_input, &queue_encoder_in, &pool_encoder_in);
      if (status != MMAL_SUCCESS)
      {
         behaviour->init_result = MMALCAM_INIT_ERROR_ENCODER_IN;
         goto error;
      }

      status = FUNC30(encoder_output, &queue_encoder_out, &pool_encoder_out);
      if (status != MMAL_SUCCESS)
      {
         behaviour->init_result = MMALCAM_INIT_ERROR_ENCODER_OUT;
         goto error;
      }

      status = FUNC16(video_port, &camera_capture.hdr);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         behaviour->init_result = MMALCAM_INIT_ERROR_CAMERA_CAPTURE;
         goto error;
      }

#if USE_CONTAINER
      container = test_container_open(behaviour->uri, encoder_output->format, &status);
      if (!container)
      {
         /* Notify user, carry on discarding encoded output buffers */
         fprintf(stderr, "Error (%i) opening container: %s\n", status, behaviour->uri);
      }
#else

      output = FUNC7(behaviour->uri, "wb");
      if(!output)
      {
         /* Notify user, carry on discarding encoded output buffers */
         FUNC8(stderr, "Error opening output file: %s\n", behaviour->uri);
      }
#endif
   }

   /* Initialisation now complete */
   behaviour->init_result = MMALCAM_INIT_SUCCESS;
   FUNC41(&behaviour->init_sem);

   ms_per_change = behaviour->seconds_per_change * 1000;
   last_change_ms = FUNC40();
   set_focus_delay_ms = 1000;

   while(1)
   {
      MMAL_BUFFER_HEADER_T *buffer;
      VCOS_UNSIGNED set;

      FUNC39(&events, MMAL_CAM_ANY_EVENT, VCOS_OR_CONSUME, FUNC2(2), &set);
      if(*stop) break;

      if (behaviour->focus_test != MMAL_PARAM_FOCUS_MAX)
      {
         if (set & MMAL_CAM_AUTOFOCUS_COMPLETE ||
               (set_focus_delay_ms && (FUNC40() - last_change_ms) >= set_focus_delay_ms))
         {
            set_focus_delay_ms = 0;
            FUNC27(camera, behaviour->focus_test);
         }
      }

      /* Send empty buffers to the output ports */
      status = FUNC6(viewfinder_port, pool_viewfinder);
      if (status != MMAL_SUCCESS)
         break;
      status = FUNC6(video_port, pool_encoder_in);
      if (status != MMAL_SUCCESS)
         break;
      status = FUNC6(encoder_output, pool_encoder_out);
      if (status != MMAL_SUCCESS)
         break;

      /* Process filled output buffers */
      status = FUNC29(render_port, queue_viewfinder);
      if (status != MMAL_SUCCESS)
         break;
      status = FUNC29(encoder_input, queue_encoder_in);
      if (status != MMAL_SUCCESS)
         break;

      /* Process output buffers from encoder */
      if (queue_encoder_out)
      {
         buffer = FUNC19(queue_encoder_out);
         if (buffer)
         {
            if (output
#if USE_CONTAINER
                || container
#endif
                )
            {
               FUNC10(buffer);
#if USE_CONTAINER
               test_container_write(container, buffer);
#else
               FUNC1("Write %d bytes of data from %p", buffer->length, buffer->data);
               FUNC9(buffer->data, 1, buffer->length, output);
#endif
               FUNC11(buffer);
               packet_count++;
               if (packet_count > MAX_PACKET_COUNT)
               {
#if USE_CONTAINER
                  vc_container_close(container);
                  container = 0;
#else
                  FUNC5(output);
#endif
                  output = NULL;
                  FUNC8(stderr, "All packets written\n");
               }
            }
            FUNC12(buffer);
         }
      }

      /* Change a camera parameter if requested */
      if (ms_per_change != 0)
      {
         if((FUNC40() - last_change_ms) >= ms_per_change)
         {
            last_change_ms = FUNC40();
            switch (behaviour->change)
            {
               case MMALCAM_CHANGE_IMAGE_EFFECT:
                  if (!FUNC22(camera))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_ROTATION:
                  if (!FUNC25(camera))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_ZOOM:
                  if (!FUNC26(camera))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_FOCUS:
                  if (!FUNC23(camera))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_DRC:
                  if (!FUNC21(camera))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_HDR:
                  if (!FUNC24(camera))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_CONTRAST:
                  if (!FUNC20(camera, MMAL_PARAMETER_CONTRAST, -100, 100, "contrast"))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_BRIGHTNESS:
                  if (!FUNC20(camera, MMAL_PARAMETER_BRIGHTNESS, 0, 100, "brightness"))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_SATURATION:
                  if (!FUNC20(camera, MMAL_PARAMETER_SATURATION, -100, 100, "saturation"))
                     *stop = 1;
                  break;
               case MMALCAM_CHANGE_SHARPNESS:
                  if (!FUNC20(camera, MMAL_PARAMETER_SHARPNESS, -100, 100, "sharpness"))
                     *stop = 1;
                  break;
               default:
                  FUNC1("Unexpected change behaviour: %d", behaviour->change);
                  break;
            }
         }
      }
   }

   /* Disable ports */
   FUNC4(viewfinder_port);
   FUNC4(render_port);
   FUNC4(video_port);
   FUNC4(encoder_input);
   FUNC4(encoder_output);

   /* Disable components */
   FUNC14(render);
   if (encoder)
      FUNC14(encoder);
   FUNC14(camera);

   FUNC0(behaviour->render_stats, MMAL_PARAMETER_STATISTICS);
   FUNC15(render_port, &behaviour->render_stats.hdr);
   if (encoder)
   {
      FUNC0(behaviour->encoder_stats, MMAL_PARAMETER_STATISTICS);
      FUNC15(encoder_output, &behaviour->encoder_stats.hdr);
   }

 error:
   /* The pools need to be destroyed first since they are owned by the components */
   if(pool_viewfinder)
      FUNC17(viewfinder_port, pool_viewfinder);
   if(pool_encoder_in)
      FUNC17(video_port, pool_encoder_in);
   if(pool_encoder_out)
      FUNC17(encoder_output, pool_encoder_out);

   if(render)
      FUNC13(render);
   if(encoder)
      FUNC13(encoder);
   if(camera)
      FUNC13(camera);

   if(queue_viewfinder)
      FUNC18(queue_viewfinder);
   if(queue_encoder_in)
      FUNC18(queue_encoder_in);
   if(queue_encoder_out)
      FUNC18(queue_encoder_out);

#if USE_CONTAINER
   if(container)
      vc_container_close(container);
#endif
   if(output)
      FUNC5(output);

   FUNC38(&events);

   if (packet_count)
      FUNC28("Packet count: %d\n", packet_count);

   if (behaviour->init_result != MMALCAM_INIT_SUCCESS)
      FUNC41(&behaviour->init_sem);

   return (int)status;
}