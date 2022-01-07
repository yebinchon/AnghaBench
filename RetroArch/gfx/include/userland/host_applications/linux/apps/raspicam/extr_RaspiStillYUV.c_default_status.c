
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeout; int camera_parameters; int preview_parameters; scalar_t__ onlyLuma; scalar_t__ burstCaptureMode; int frameNextMethod; scalar_t__ fullResPreview; int * linkname; scalar_t__ timelapse; int common_settings; } ;
typedef TYPE_1__ RASPISTILLYUV_STATE ;


 int FRAME_NEXT_SINGLE ;
 int memset (TYPE_1__*,int ,int) ;
 int raspicamcontrol_set_defaults (int *) ;
 int raspicommonsettings_set_defaults (int *) ;
 int raspipreview_set_defaults (int *) ;
 int vcos_assert (int ) ;

__attribute__((used)) static void default_status(RASPISTILLYUV_STATE *state)
{
   if (!state)
   {
      vcos_assert(0);
      return;
   }


   memset(state, 0, sizeof(RASPISTILLYUV_STATE));

   raspicommonsettings_set_defaults(&state->common_settings);


   state->timeout = -1;
   state->timelapse = 0;
   state->linkname = ((void*)0);
   state->fullResPreview = 0;
   state->frameNextMethod = FRAME_NEXT_SINGLE;
   state->burstCaptureMode=0;
   state->onlyLuma = 0;


   raspipreview_set_defaults(&state->preview_parameters);


   raspicamcontrol_set_defaults(&state->camera_parameters);
}
