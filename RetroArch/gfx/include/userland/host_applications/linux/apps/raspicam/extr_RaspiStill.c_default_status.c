
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int enable; int width; int height; int quality; } ;
struct TYPE_6__ {int timeout; int quality; int demoInterval; int enableExifTags; int raspitex_state; int camera_parameters; int preview_parameters; scalar_t__ restart_interval; scalar_t__ timestamp; scalar_t__ datetime; scalar_t__ burstCaptureMode; scalar_t__ glCapture; scalar_t__ useGL; int frameNextMethod; scalar_t__ fullResPreview; scalar_t__ timelapse; scalar_t__ numExifTags; int encoding; int * encoder_pool; int * encoder_connection; int * preview_connection; int * encoder_component; int * camera_component; scalar_t__ demoMode; TYPE_1__ thumbnailConfig; scalar_t__ frameStart; int * linkname; scalar_t__ wantRAW; int common_settings; } ;
typedef TYPE_2__ RASPISTILL_STATE ;


 int FRAME_NEXT_SINGLE ;
 int MMAL_ENCODING_JPEG ;
 int memset (TYPE_2__*,int ,int) ;
 int raspicamcontrol_set_defaults (int *) ;
 int raspicommonsettings_set_defaults (int *) ;
 int raspipreview_set_defaults (int *) ;
 int raspitex_set_defaults (int *) ;
 int vcos_assert (int ) ;

__attribute__((used)) static void default_status(RASPISTILL_STATE *state)
{
   if (!state)
   {
      vcos_assert(0);
      return;
   }

   memset(state, 0, sizeof(*state));

   raspicommonsettings_set_defaults(&state->common_settings);

   state->timeout = -1;
   state->quality = 85;
   state->wantRAW = 0;
   state->linkname = ((void*)0);
   state->frameStart = 0;
   state->thumbnailConfig.enable = 1;
   state->thumbnailConfig.width = 64;
   state->thumbnailConfig.height = 48;
   state->thumbnailConfig.quality = 35;
   state->demoMode = 0;
   state->demoInterval = 250;
   state->camera_component = ((void*)0);
   state->encoder_component = ((void*)0);
   state->preview_connection = ((void*)0);
   state->encoder_connection = ((void*)0);
   state->encoder_pool = ((void*)0);
   state->encoding = MMAL_ENCODING_JPEG;
   state->numExifTags = 0;
   state->enableExifTags = 1;
   state->timelapse = 0;
   state->fullResPreview = 0;
   state->frameNextMethod = FRAME_NEXT_SINGLE;
   state->useGL = 0;
   state->glCapture = 0;
   state->burstCaptureMode=0;
   state->datetime = 0;
   state->timestamp = 0;
   state->restart_interval = 0;


   raspipreview_set_defaults(&state->preview_parameters);


   raspicamcontrol_set_defaults(&state->camera_parameters);


   raspitex_set_defaults(&state->raspitex_state);
}
