#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_32__ {int /*<<< orphan*/ * input; TYPE_8__** output; int /*<<< orphan*/  control; } ;
struct TYPE_31__ {int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer_num; int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_num_recommended; TYPE_2__* format; } ;
struct TYPE_27__ {int den; int /*<<< orphan*/  num; } ;
struct TYPE_26__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_30__ {TYPE_4__ frame_rate; int /*<<< orphan*/  height; TYPE_3__ crop; int /*<<< orphan*/  width; } ;
struct TYPE_29__ {int /*<<< orphan*/  stop_cb; int /*<<< orphan*/  video_frame_cb; } ;
struct TYPE_28__ {TYPE_8__* video_output; int /*<<< orphan*/  queue; scalar_t__ out_pool; int /*<<< orphan*/ * connection; TYPE_9__* camera; TYPE_9__* video_decode; TYPE_9__* reader; int /*<<< orphan*/  created; int /*<<< orphan*/  wd_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sema; TYPE_6__ callbacks; int /*<<< orphan*/  opts; } ;
struct TYPE_25__ {scalar_t__ type; TYPE_1__* es; int /*<<< orphan*/  encoding; } ;
struct TYPE_24__ {TYPE_7__ video; } ;
typedef  TYPE_5__ SVP_T ;
typedef  int /*<<< orphan*/  SVP_OPTS_T ;
typedef  TYPE_6__ SVP_CALLBACKS_T ;
typedef  TYPE_7__ MMAL_VIDEO_FORMAT_T ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_8__ MMAL_PORT_T ;
typedef  TYPE_9__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_CAMERA ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_CONTAINER_READER ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_VIDEO_DECODER ; 
 int /*<<< orphan*/  MMAL_CONNECTION_FLAG_TUNNELLING ; 
 scalar_t__ MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_ENCODING_OPAQUE ; 
 scalar_t__ MMAL_ENOMEM ; 
 scalar_t__ MMAL_ENOSYS ; 
 scalar_t__ MMAL_ES_TYPE_VIDEO ; 
 int /*<<< orphan*/  MMAL_PARAMETER_ZERO_COPY ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 int /*<<< orphan*/  SVP_CAMERA_FRAMERATE ; 
 int /*<<< orphan*/  SVP_CAMERA_HEIGHT ; 
 int /*<<< orphan*/  SVP_CAMERA_WIDTH ; 
 int /*<<< orphan*/  SVP_CREATED_MUTEX ; 
 int /*<<< orphan*/  SVP_CREATED_SEM ; 
 int /*<<< orphan*/  SVP_CREATED_TIMER ; 
 int /*<<< orphan*/  SVP_CREATED_WD_TIMER ; 
 scalar_t__ VCOS_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_9__**) ; 
 scalar_t__ FUNC3 (TYPE_9__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_8__*) ; 
 scalar_t__ FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  svp_bh_control_cb ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_9__*,char const*,TYPE_8__**) ; 
 int /*<<< orphan*/  svp_timer_cb ; 
 int /*<<< orphan*/  svp_watchdog_cb ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC13 (int,int,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_5__*) ; 

SVP_T *FUNC17(const char *uri, SVP_CALLBACKS_T *callbacks, const SVP_OPTS_T *opts)
{
   SVP_T *svp;
   MMAL_STATUS_T st;
   VCOS_STATUS_T vst;
   MMAL_PORT_T *reader_output = NULL;
   MMAL_COMPONENT_T *video_decode = NULL;
   MMAL_PORT_T *video_output = NULL;

   FUNC1("Creating player for %s", (uri ? uri : "camera preview"));

   FUNC12(callbacks->video_frame_cb);
   FUNC12(callbacks->stop_cb);

   svp = FUNC13(1, sizeof(*svp), "svp");
   FUNC0((svp ? MMAL_SUCCESS : MMAL_ENOMEM), "Failed to allocate context");

   svp->opts = *opts;
   svp->callbacks = *callbacks;

   /* Semaphore used for synchronising buffer handling for decoded frames */
   vst = FUNC15(&svp->sema, "svp-sem", 0);
   FUNC0((vst == VCOS_SUCCESS ? MMAL_SUCCESS : MMAL_ENOMEM), "Failed to create semaphore");
   svp->created |= SVP_CREATED_SEM;

   vst = FUNC14(&svp->mutex, "svp-mutex");
   FUNC0((vst == VCOS_SUCCESS ? MMAL_SUCCESS : MMAL_ENOMEM), "Failed to create mutex");
   svp->created |= SVP_CREATED_MUTEX;

   vst = FUNC16(&svp->timer, "svp-timer", svp_timer_cb, svp);
   FUNC0((vst == VCOS_SUCCESS ? MMAL_SUCCESS : MMAL_ENOMEM), "Failed to create timer");
   svp->created |= SVP_CREATED_TIMER;

   vst = FUNC16(&svp->wd_timer, "svp-wd-timer", svp_watchdog_cb, svp);
   FUNC0((vst == VCOS_SUCCESS ? MMAL_SUCCESS : MMAL_ENOMEM), "Failed to create timer");
   svp->created |= SVP_CREATED_WD_TIMER;

   /* Create components */
   svp->reader = NULL;
   svp->video_decode = NULL;
   svp->camera = NULL;
   svp->connection = NULL;

   if (uri)
   {
      /* Video from URI: setup container_reader -> video_decode */

      /* Create and set up container reader */
      st = FUNC2(MMAL_COMPONENT_DEFAULT_CONTAINER_READER, &svp->reader);
      FUNC0(st, "Failed to create container reader");

      st = FUNC11(svp->reader, uri, &reader_output);
      if (st != MMAL_SUCCESS)
         goto error;

      st = FUNC3(svp->reader);
      FUNC0(st, "Failed to enable container reader");

      st = FUNC10(svp, svp->reader->control, svp_bh_control_cb);
      FUNC0(st, "Failed to enable container reader control port");

      /* Create and set up video decoder */
      st = FUNC2(MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, &svp->video_decode);
      FUNC0(st, "Failed to create video decoder");

      video_decode = svp->video_decode;
      video_output = video_decode->output[0];

      st = FUNC3(video_decode);
      FUNC0(st, "Failed to enable video decoder");

      st = FUNC10(svp, video_decode->control, svp_bh_control_cb);
      FUNC0(st, "Failed to enable video decoder control port");
   }
   else
   {
      /* Camera preview */
      st = FUNC2(MMAL_COMPONENT_DEFAULT_CAMERA, &svp->camera);
      FUNC0(st, "Failed to create camera");

      st = FUNC3(svp->camera);
      FUNC0(st, "Failed to enable camera");

      st = FUNC10(svp, svp->camera->control, svp_bh_control_cb);
      FUNC0(st, "Failed to enable camera control port");

      video_output = svp->camera->output[0]; /* Preview port */
   }

   st = FUNC6(video_output, MMAL_PARAMETER_ZERO_COPY, MMAL_TRUE);
   FUNC0((st == MMAL_ENOSYS ? MMAL_SUCCESS : st), "Failed to enable zero copy");

   if (uri)
   {
      /* Create connection: container_reader -> video_decoder */
      st = FUNC4(&svp->connection, reader_output, video_decode->input[0],
                                  MMAL_CONNECTION_FLAG_TUNNELLING);
      FUNC0(st, "Failed to create connection");
   }

   /* Set video output port format.
    * Opaque encoding ensures we get buffer data as handles to relocatable heap. */
   video_output->format->encoding = MMAL_ENCODING_OPAQUE;

   if (!uri)
   {
      /* Set video format for camera preview */
      MMAL_VIDEO_FORMAT_T *vfmt = &video_output->format->es->video;

      FUNC0((video_output->format->type == MMAL_ES_TYPE_VIDEO) ? MMAL_SUCCESS : MMAL_EINVAL,
                   "Output port isn't video format");

      vfmt->width = SVP_CAMERA_WIDTH;
      vfmt->height = SVP_CAMERA_HEIGHT;
      vfmt->crop.x = 0;
      vfmt->crop.y = 0;
      vfmt->crop.width = vfmt->width;
      vfmt->crop.height = vfmt->height;
      vfmt->frame_rate.num = SVP_CAMERA_FRAMERATE;
      vfmt->frame_rate.den = 1;
   }

   st = FUNC5(video_output);
   FUNC0(st, "Failed to set output port format");

   /* Finally, set buffer num/size. N.B. For container_reader/video_decode, must be after
    * connection created, in order for port format to propagate.
    * Don't enable video output port until want to produce frames. */
   video_output->buffer_num = video_output->buffer_num_recommended;
   video_output->buffer_size = video_output->buffer_size_recommended;

   /* Pool + queue to hold decoded video frames */
   svp->out_pool = FUNC7(video_output, video_output->buffer_num,
                                         video_output->buffer_size);
   FUNC0((svp->out_pool ? MMAL_SUCCESS : MMAL_ENOMEM), "Error allocating pool");
   svp->queue = FUNC8();
   FUNC0((svp ? MMAL_SUCCESS : MMAL_ENOMEM), "Error allocating queue");

   svp->video_output = video_output;

   return svp;

error:
   FUNC9(svp);
   return NULL;
}