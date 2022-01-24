#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  struct record_video_data {unsigned int width; unsigned int height; unsigned int pitch; scalar_t__ data; scalar_t__ is_dupe; } const record_video_data ;
typedef  struct record_video_data uint8_t ;
struct TYPE_3__ {int frame_drop_count; int frame_drop_ratio; int pix_size; } ;
struct TYPE_4__ {int can_sleep; int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; int /*<<< orphan*/  video_fifo; int /*<<< orphan*/  attr_fifo; TYPE_1__ video; int /*<<< orphan*/  cond_lock; int /*<<< orphan*/  alive; } ;
typedef  TYPE_2__ ffmpeg_t ;
typedef  int /*<<< orphan*/  attr_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct record_video_data const*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(void *data,
      const struct record_video_data *vid)
{
   unsigned y;
   bool drop_frame;
   struct record_video_data attr_data;
   ffmpeg_t *handle = (ffmpeg_t*)data;
   int       offset = 0;

   if (!handle || !vid)
      return false;

   drop_frame = handle->video.frame_drop_count++ %
      handle->video.frame_drop_ratio;

   handle->video.frame_drop_count %= handle->video.frame_drop_ratio;

   if (drop_frame)
      return true;

   for (;;)
   {
      unsigned avail;
      FUNC4(handle->lock);
      avail = FUNC1(handle->attr_fifo);
      FUNC5(handle->lock);

      if (!handle->alive)
         return false;

      if (avail >= sizeof(*vid))
         break;

      FUNC4(handle->cond_lock);
      if (handle->can_sleep)
      {
         handle->can_sleep = false;
         FUNC3(handle->cond, handle->cond_lock);
         handle->can_sleep = true;
      }
      else
         FUNC2(handle->cond);

      FUNC5(handle->cond_lock);
   }

   FUNC4(handle->lock);

   /* Tightly pack our frame to conserve memory.
    * libretro tends to use a very large pitch.
    */
   attr_data = *vid;

   if (attr_data.is_dupe)
      attr_data.width = attr_data.height = attr_data.pitch = 0;
   else
      attr_data.pitch = attr_data.width * handle->video.pix_size;

   FUNC0(handle->attr_fifo, &attr_data, sizeof(attr_data));

   for (y = 0; y < attr_data.height; y++, offset += vid->pitch)
      FUNC0(handle->video_fifo,
            (const uint8_t*)vid->data + offset, attr_data.pitch);

   FUNC5(handle->lock);
   FUNC2(handle->cond);

   return true;
}