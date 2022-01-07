
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int timeout; int demoInterval; int onTime; int offTime; int camera_parameters; int preview_parameters; scalar_t__ onlyLuma; scalar_t__ bCapturing; int waitMethod; scalar_t__ demoMode; int framerate; TYPE_2__ common_settings; } ;
typedef TYPE_1__ RASPIVIDYUV_STATE ;


 int VIDEO_FRAME_RATE_NUM ;
 int WAIT_METHOD_NONE ;
 int memset (TYPE_1__*,int ,int) ;
 int raspicamcontrol_set_defaults (int *) ;
 int raspicommonsettings_set_defaults (TYPE_2__*) ;
 int raspipreview_set_defaults (int *) ;
 int vcos_assert (int ) ;

__attribute__((used)) static void default_status(RASPIVIDYUV_STATE *state)
{
   if (!state)
   {
      vcos_assert(0);
      return;
   }


   memset(state, 0, sizeof(RASPIVIDYUV_STATE));

   raspicommonsettings_set_defaults(&state->common_settings);


   state->timeout = -1;
   state->common_settings.width = 1920;
   state->common_settings.height = 1080;
   state->framerate = VIDEO_FRAME_RATE_NUM;
   state->demoMode = 0;
   state->demoInterval = 250;
   state->waitMethod = WAIT_METHOD_NONE;
   state->onTime = 5000;
   state->offTime = 5000;
   state->bCapturing = 0;
   state->onlyLuma = 0;


   raspipreview_set_defaults(&state->preview_parameters);


   raspicamcontrol_set_defaults(&state->camera_parameters);
}
