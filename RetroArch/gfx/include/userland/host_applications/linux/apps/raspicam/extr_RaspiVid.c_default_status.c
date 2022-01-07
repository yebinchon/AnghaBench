
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int timeout; int bitrate; int intraperiod; int demoInterval; int immutableInput; int onTime; int offTime; int segmentNumber; int intra_refresh_type; int netListen; int slices; int camera_parameters; int preview_parameters; int addSPSTiming; scalar_t__ save_pts; scalar_t__ frame; scalar_t__ inlineMotionVectors; scalar_t__ splitWait; scalar_t__ splitNow; scalar_t__ segmentWrap; scalar_t__ segmentSize; scalar_t__ bInlineHeaders; scalar_t__ bCapturing; int waitMethod; int level; int profile; scalar_t__ demoMode; scalar_t__ quantisationParameter; int framerate; int encoding; TYPE_2__ common_settings; } ;
typedef TYPE_1__ RASPIVID_STATE ;


 int MMAL_ENCODING_H264 ;
 int MMAL_FALSE ;
 int MMAL_VIDEO_LEVEL_H264_4 ;
 int MMAL_VIDEO_PROFILE_H264_HIGH ;
 int VIDEO_FRAME_RATE_NUM ;
 int WAIT_METHOD_NONE ;
 int memset (TYPE_1__*,int ,int) ;
 int raspicamcontrol_set_defaults (int *) ;
 int raspicommonsettings_set_defaults (TYPE_2__*) ;
 int raspipreview_set_defaults (int *) ;
 int vcos_assert (int ) ;

__attribute__((used)) static void default_status(RASPIVID_STATE *state)
{
   if (!state)
   {
      vcos_assert(0);
      return;
   }


   memset(state, 0, sizeof(RASPIVID_STATE));

   raspicommonsettings_set_defaults(&state->common_settings);


   state->timeout = -1;
   state->common_settings.width = 1920;
   state->common_settings.height = 1080;
   state->encoding = MMAL_ENCODING_H264;
   state->bitrate = 17000000;
   state->framerate = VIDEO_FRAME_RATE_NUM;
   state->intraperiod = -1;
   state->quantisationParameter = 0;
   state->demoMode = 0;
   state->demoInterval = 250;
   state->immutableInput = 1;
   state->profile = MMAL_VIDEO_PROFILE_H264_HIGH;
   state->level = MMAL_VIDEO_LEVEL_H264_4;
   state->waitMethod = WAIT_METHOD_NONE;
   state->onTime = 5000;
   state->offTime = 5000;
   state->bCapturing = 0;
   state->bInlineHeaders = 0;
   state->segmentSize = 0;
   state->segmentNumber = 1;
   state->segmentWrap = 0;
   state->splitNow = 0;
   state->splitWait = 0;
   state->inlineMotionVectors = 0;
   state->intra_refresh_type = -1;
   state->frame = 0;
   state->save_pts = 0;
   state->netListen = 0;
   state->addSPSTiming = MMAL_FALSE;
   state->slices = 1;


   raspipreview_set_defaults(&state->preview_parameters);


   raspicamcontrol_set_defaults(&state->camera_parameters);
}
