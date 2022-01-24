#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct video_viewport {int width; scalar_t__ height; scalar_t__ full_height; scalar_t__ full_width; scalar_t__ y; scalar_t__ x; } ;
struct record_video_data {unsigned int width; unsigned int height; int pitch; int is_dupe; void const* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* push_video ) (int /*<<< orphan*/ ,struct record_video_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_RECORD_DEINIT ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_RECORDING_TERMINATED_DUE_TO_RESIZE ; 
 int /*<<< orphan*/  MSG_VIEWPORT_SIZE_CALCULATION_FAILED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recording_data ; 
 TYPE_1__* recording_driver ; 
 scalar_t__ recording_gpu_height ; 
 int recording_gpu_width ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct record_video_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct video_viewport*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void const*,int) ; 
 void const* video_driver_record_gpu_buffer ; 

__attribute__((used)) static void FUNC8(const void *data, unsigned width,
      unsigned height, size_t pitch, bool is_idle)
{
   struct record_video_data ffemu_data;

   ffemu_data.data     = data;
   ffemu_data.width    = width;
   ffemu_data.height   = height;
   ffemu_data.pitch    = (int)pitch;
   ffemu_data.is_dupe  = false;

   if (video_driver_record_gpu_buffer)
   {
      struct video_viewport vp;

      vp.x                        = 0;
      vp.y                        = 0;
      vp.width                    = 0;
      vp.height                   = 0;
      vp.full_width               = 0;
      vp.full_height              = 0;

      FUNC5(&vp);

      if (!vp.width || !vp.height)
      {
         FUNC0("[recording] %s \n",
               FUNC2(MSG_VIEWPORT_SIZE_CALCULATION_FAILED));
         FUNC6();
         FUNC8(data, width, height, pitch, is_idle);
         return;
      }

      /* User has resized. We kinda have a problem now. */
      if (  vp.width  != recording_gpu_width ||
            vp.height != recording_gpu_height)
      {
         FUNC0("[recording] %s\n", FUNC2(MSG_RECORDING_TERMINATED_DUE_TO_RESIZE));

         FUNC3(
               FUNC2(MSG_RECORDING_TERMINATED_DUE_TO_RESIZE),
               1, 180, true,
               NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
         FUNC1(CMD_EVENT_RECORD_DEINIT, NULL);
         return;
      }

      /* Big bottleneck.
       * Since we might need to do read-backs asynchronously,
       * it might take 3-4 times before this returns true. */
      if (!FUNC7(video_driver_record_gpu_buffer, is_idle))
         return;

      ffemu_data.pitch  = (int)(recording_gpu_width * 3);
      ffemu_data.width  = (unsigned)recording_gpu_width;
      ffemu_data.height = (unsigned)recording_gpu_height;
      ffemu_data.data   = video_driver_record_gpu_buffer + (ffemu_data.height - 1) * ffemu_data.pitch;

      ffemu_data.pitch  = -ffemu_data.pitch;
   }
   else
      ffemu_data.is_dupe = !data;

   recording_driver->push_video(recording_data, &ffemu_data);
}