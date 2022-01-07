
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ gps; scalar_t__ sensor_mode; scalar_t__ cameraNum; scalar_t__ verbose; int * filename; scalar_t__ height; scalar_t__ width; int camera_name; } ;
typedef TYPE_1__ RASPICOMMONSETTINGS_PARAMETERS ;


 int MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN ;
 int strncpy (int ,char*,int ) ;

void raspicommonsettings_set_defaults(RASPICOMMONSETTINGS_PARAMETERS *state)
{
   strncpy(state->camera_name, "(Unknown)", MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN);

   state->width = 0;
   state->height = 0;
   state->filename = ((void*)0);
   state->verbose = 0;
   state->cameraNum = 0;
   state->sensor_mode = 0;
   state->gps = 0;
}
