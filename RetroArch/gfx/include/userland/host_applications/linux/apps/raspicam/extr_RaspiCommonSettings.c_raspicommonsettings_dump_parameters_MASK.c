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
struct TYPE_3__ {char* camera_name; int width; int height; char* filename; int cameraNum; int sensor_mode; scalar_t__ gps; } ;
typedef  TYPE_1__ RASPICOMMONSETTINGS_PARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(RASPICOMMONSETTINGS_PARAMETERS *state)
{
   FUNC0(stderr, "Camera Name %s\n", state->camera_name);
   FUNC0(stderr, "Width %d, Height %d, filename %s\n", state->width,
           state->height, state->filename);
   FUNC0(stderr, "Using camera %d, sensor mode %d\n\n", state->cameraNum, state->sensor_mode);
   FUNC0(stderr, "GPS output %s\n\n", state->gps ? "Enabled" : "Disabled");
}