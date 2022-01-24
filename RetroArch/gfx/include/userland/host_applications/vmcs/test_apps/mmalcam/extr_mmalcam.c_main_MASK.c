#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_THREAD_ATTR_T ;
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_3__ {int zero_copy; scalar_t__ init_result; int /*<<< orphan*/  init_sem; int /*<<< orphan*/  encoder_stats; scalar_t__ uri; int /*<<< orphan*/  render_stats; int /*<<< orphan*/  camera_num; int /*<<< orphan*/  focus_test; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  vformat; int /*<<< orphan*/  layer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_BIT_RATE ; 
 int /*<<< orphan*/  DEFAULT_CAM_NUM ; 
 int /*<<< orphan*/  DEFAULT_VIDEO_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ MMALCAM_INIT_SUCCESS ; 
 int /*<<< orphan*/  MMAL_PARAM_FOCUS_MAX ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  VIEWFINDER_LAYER ; 
 TYPE_1__ camcorder_behaviour ; 
 int /*<<< orphan*/  camcorder_thread ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ sleepy_time ; 
 int stop ; 
 int /*<<< orphan*/  test_mmal_camcorder ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,char const**) ; 
 int /*<<< orphan*/  test_signal_handler ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC15(int argc, const char **argv)
{
   VCOS_THREAD_ATTR_T attrs;
   VCOS_STATUS_T status;
   int result = 0;

   FUNC8("mmalcam", VCOS_LOG_CATEGORY);
   FUNC2("MMAL Camera Test App\n");
   FUNC3(SIGINT, test_signal_handler);

   camcorder_behaviour.layer = VIEWFINDER_LAYER;
   camcorder_behaviour.vformat = DEFAULT_VIDEO_FORMAT;
   camcorder_behaviour.zero_copy = 1;
   camcorder_behaviour.bit_rate = DEFAULT_BIT_RATE;
   camcorder_behaviour.focus_test = MMAL_PARAM_FOCUS_MAX;
   camcorder_behaviour.camera_num = DEFAULT_CAM_NUM;

   if(FUNC6(argc, argv))
   {
      result = -1;
      goto error;
   }

   status = FUNC9(&camcorder_behaviour.init_sem, "mmalcam-init", 0);
   FUNC7(status == VCOS_SUCCESS);

   FUNC12(&attrs);
   if (FUNC13(&camcorder_thread, "mmal camcorder", &attrs, test_mmal_camcorder, &camcorder_behaviour) != VCOS_SUCCESS)
   {
      FUNC0("Thread creation failure");
      result = -2;
      goto error;
   }

   FUNC11(&camcorder_behaviour.init_sem);
   if (camcorder_behaviour.init_result != MMALCAM_INIT_SUCCESS)
   {
      FUNC0("Initialisation failed: %d", camcorder_behaviour.init_result);
      result = (int)camcorder_behaviour.init_result;
      goto error;
   }

   if (sleepy_time != 0)
   {
      FUNC4(sleepy_time);
      stop = 1;
   }

error:
   FUNC1("Waiting for camcorder thread to terminate");
   FUNC14(&camcorder_thread, NULL);

   FUNC5("Render", &camcorder_behaviour.render_stats);
   if (camcorder_behaviour.uri)
      FUNC5("Encoder", &camcorder_behaviour.encoder_stats);

   FUNC10(&camcorder_behaviour.init_sem);
   return result;
}