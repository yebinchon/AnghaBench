#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {int /*<<< orphan*/  control; } ;
struct TYPE_29__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_31__ {int member_2; int /*<<< orphan*/  hdr; int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
struct TYPE_30__ {scalar_t__ settings; int /*<<< orphan*/  digital_gain; int /*<<< orphan*/  analog_gain; int /*<<< orphan*/  annotate_y; int /*<<< orphan*/  annotate_x; int /*<<< orphan*/  annotate_justify; int /*<<< orphan*/  annotate_bg_colour; int /*<<< orphan*/  annotate_text_colour; int /*<<< orphan*/  annotate_text_size; int /*<<< orphan*/  annotate_string; int /*<<< orphan*/  enable_annotate; int /*<<< orphan*/  stats_pass; int /*<<< orphan*/  drc_level; int /*<<< orphan*/  shutter_speed; int /*<<< orphan*/  roi; int /*<<< orphan*/  vflip; int /*<<< orphan*/  hflip; int /*<<< orphan*/  rotation; int /*<<< orphan*/  colourEffects; int /*<<< orphan*/  imageEffect; int /*<<< orphan*/  awb_gains_b; int /*<<< orphan*/  awb_gains_r; int /*<<< orphan*/  awbMode; int /*<<< orphan*/  exposureMeterMode; int /*<<< orphan*/  flickerAvoidMode; int /*<<< orphan*/  exposureMode; int /*<<< orphan*/  exposureCompensation; int /*<<< orphan*/  videoStabilisation; int /*<<< orphan*/  ISO; int /*<<< orphan*/  brightness; int /*<<< orphan*/  contrast; int /*<<< orphan*/  sharpness; int /*<<< orphan*/  saturation; } ;
typedef  TYPE_2__ RASPICAM_CAMERA_PARAMETERS ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PARAMETER_CHANGE_EVENT_REQUEST_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_PARAMETER_CAMERA_SETTINGS ; 
 int /*<<< orphan*/  MMAL_PARAMETER_CHANGE_EVENT_REQUEST ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

int FUNC24(MMAL_COMPONENT_T *camera, const RASPICAM_CAMERA_PARAMETERS *params)
{
   int result;

   result  = FUNC18(camera, params->saturation);
   result += FUNC19(camera, params->sharpness);
   result += FUNC9(camera, params->contrast);
   result += FUNC7(camera, params->brightness);
   result += FUNC2(camera, params->ISO);
   result += FUNC22(camera, params->videoStabilisation);
   result += FUNC10(camera, params->exposureCompensation);
   result += FUNC11(camera, params->exposureMode);
   result += FUNC12(camera, params->flickerAvoidMode);
   result += FUNC16(camera, params->exposureMeterMode);
   result += FUNC6(camera, params->awbMode);
   result += FUNC5(camera, params->awb_gains_r, params->awb_gains_b);
   result += FUNC15(camera, params->imageEffect);
   result += FUNC8(camera, &params->colourEffects);
   //result += raspicamcontrol_set_thumbnail_parameters(camera, &params->thumbnailConfig);  TODO Not working for some reason
   result += FUNC17(camera, params->rotation);
   result += FUNC13(camera, params->hflip, params->vflip);
   result += FUNC3(camera, params->roi);
   result += FUNC20(camera, params->shutter_speed);
   result += FUNC1(camera, params->drc_level);
   result += FUNC21(camera, params->stats_pass);
   result += FUNC4(camera, params->enable_annotate, params->annotate_string,
                                          params->annotate_text_size,
                                          params->annotate_text_colour,
                                          params->annotate_bg_colour,
                                          params->annotate_justify,
                                          params->annotate_x,
                                          params->annotate_y);
   result += FUNC14(camera, params->analog_gain, params->digital_gain);

   if (params->settings)
   {
      MMAL_PARAMETER_CHANGE_EVENT_REQUEST_T change_event_request =
      {
         {MMAL_PARAMETER_CHANGE_EVENT_REQUEST, sizeof(MMAL_PARAMETER_CHANGE_EVENT_REQUEST_T)},
         MMAL_PARAMETER_CAMERA_SETTINGS, 1
      };

      MMAL_STATUS_T status = FUNC0(camera->control, &change_event_request.hdr);
      if ( status != MMAL_SUCCESS )
      {
         FUNC23("No camera settings events");
      }

      result += status;
   }

   return result;
}