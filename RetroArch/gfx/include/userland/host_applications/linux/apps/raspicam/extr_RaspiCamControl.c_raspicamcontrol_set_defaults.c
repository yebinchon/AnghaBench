
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {void* swap_eyes; void* decimate; int mode; } ;
struct TYPE_8__ {double x; double y; double w; double h; } ;
struct TYPE_7__ {int u; int v; scalar_t__ enable; } ;
struct TYPE_10__ {int brightness; char* annotate_string; int annotate_text_colour; int annotate_bg_colour; TYPE_3__ stereo_mode; scalar_t__ annotate_text_size; scalar_t__ enable_annotate; void* stats_pass; int drc_level; scalar_t__ awb_gains_b; scalar_t__ awb_gains_r; scalar_t__ shutter_speed; TYPE_2__ roi; scalar_t__ vflip; scalar_t__ hflip; scalar_t__ rotation; TYPE_1__ colourEffects; int imageEffect; int awbMode; int exposureMeterMode; int flickerAvoidMode; int exposureMode; scalar_t__ exposureCompensation; scalar_t__ videoStabilisation; scalar_t__ ISO; scalar_t__ saturation; scalar_t__ contrast; scalar_t__ sharpness; } ;
typedef TYPE_4__ RASPICAM_CAMERA_PARAMETERS ;


 void* MMAL_FALSE ;
 int MMAL_PARAMETER_DRC_STRENGTH_OFF ;
 int MMAL_PARAM_AWBMODE_AUTO ;
 int MMAL_PARAM_EXPOSUREMETERINGMODE_AVERAGE ;
 int MMAL_PARAM_EXPOSUREMODE_AUTO ;
 int MMAL_PARAM_FLICKERAVOID_OFF ;
 int MMAL_PARAM_IMAGEFX_NONE ;
 int MMAL_STEREOSCOPIC_MODE_NONE ;
 int vcos_assert (TYPE_4__*) ;

void raspicamcontrol_set_defaults(RASPICAM_CAMERA_PARAMETERS *params)
{
   vcos_assert(params);

   params->sharpness = 0;
   params->contrast = 0;
   params->brightness = 50;
   params->saturation = 0;
   params->ISO = 0;
   params->videoStabilisation = 0;
   params->exposureCompensation = 0;
   params->exposureMode = MMAL_PARAM_EXPOSUREMODE_AUTO;
   params->flickerAvoidMode = MMAL_PARAM_FLICKERAVOID_OFF;
   params->exposureMeterMode = MMAL_PARAM_EXPOSUREMETERINGMODE_AVERAGE;
   params->awbMode = MMAL_PARAM_AWBMODE_AUTO;
   params->imageEffect = MMAL_PARAM_IMAGEFX_NONE;
   params->colourEffects.enable = 0;
   params->colourEffects.u = 128;
   params->colourEffects.v = 128;
   params->rotation = 0;
   params->hflip = params->vflip = 0;
   params->roi.x = params->roi.y = 0.0;
   params->roi.w = params->roi.h = 1.0;
   params->shutter_speed = 0;
   params->awb_gains_r = 0;
   params->awb_gains_b = 0;
   params->drc_level = MMAL_PARAMETER_DRC_STRENGTH_OFF;
   params->stats_pass = MMAL_FALSE;
   params->enable_annotate = 0;
   params->annotate_string[0] = '\0';
   params->annotate_text_size = 0;
   params->annotate_text_colour = -1;
   params->annotate_bg_colour = -1;
   params->stereo_mode.mode = MMAL_STEREOSCOPIC_MODE_NONE;
   params->stereo_mode.decimate = MMAL_FALSE;
   params->stereo_mode.swap_eyes = MMAL_FALSE;
}
