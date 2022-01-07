
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* camera_name; int width; int height; char* filename; int cameraNum; int sensor_mode; scalar_t__ gps; } ;
typedef TYPE_1__ RASPICOMMONSETTINGS_PARAMETERS ;


 int fprintf (int ,char*,...) ;
 int stderr ;

void raspicommonsettings_dump_parameters(RASPICOMMONSETTINGS_PARAMETERS *state)
{
   fprintf(stderr, "Camera Name %s\n", state->camera_name);
   fprintf(stderr, "Width %d, Height %d, filename %s\n", state->width,
           state->height, state->filename);
   fprintf(stderr, "Using camera %d, sensor mode %d\n\n", state->cameraNum, state->sensor_mode);
   fprintf(stderr, "GPS output %s\n\n", state->gps ? "Enabled" : "Disabled");
}
