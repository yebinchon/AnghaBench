#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  param ;
struct TYPE_10__ {int size; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int /*<<< orphan*/  control; } ;
struct TYPE_8__ {int num_cameras; TYPE_1__* cameras; TYPE_4__ hdr; } ;
struct TYPE_7__ {int max_width; int max_height; char* camera_name; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PARAMETER_CAMERA_INFO_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_CAMERA_INFO ; 
 int /*<<< orphan*/  MMAL_PARAMETER_CAMERA_INFO ; 
 int MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(int camera_num, char *camera_name, int *width, int *height )
{
   MMAL_COMPONENT_T *camera_info;
   MMAL_STATUS_T status;

   // Default to the OV5647 setup
   FUNC3(camera_name, "OV5647", MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN);

   // Try to get the camera name and maximum supported resolution
   status = FUNC0(MMAL_COMPONENT_DEFAULT_CAMERA_INFO, &camera_info);
   if (status == MMAL_SUCCESS)
   {
      MMAL_PARAMETER_CAMERA_INFO_T param;
      param.hdr.id = MMAL_PARAMETER_CAMERA_INFO;
      param.hdr.size = sizeof(param)-4;  // Deliberately undersize to check firmware version
      status = FUNC2(camera_info->control, &param.hdr);

      if (status != MMAL_SUCCESS)
      {
         // Running on newer firmware
         param.hdr.size = sizeof(param);
         status = FUNC2(camera_info->control, &param.hdr);
         if (status == MMAL_SUCCESS && param.num_cameras > camera_num)
         {
            // Take the parameters from the first camera listed.
            if (*width == 0)
               *width = param.cameras[camera_num].max_width;
            if (*height == 0)
               *height = param.cameras[camera_num].max_height;
            FUNC3(camera_name, param.cameras[camera_num].camera_name, MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN);
            camera_name[MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN-1] = 0;
         }
         else
            FUNC4("Cannot read camera info, keeping the defaults for OV5647");
      }
      else
      {
         // Older firmware
         // Nothing to do here, keep the defaults for OV5647
      }

      FUNC1(camera_info);
   }
   else
   {
      FUNC4("Failed to create camera_info component");
   }

   // default to OV5647 if nothing detected..
   if (*width == 0)
      *width = 2592;
   if (*height == 0)
      *height = 1944;
}