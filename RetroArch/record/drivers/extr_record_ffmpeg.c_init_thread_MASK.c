#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct record_video_data {int dummy; } ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_7__ {int pix_size; } ;
struct TYPE_6__ {int channels; int fb_width; int fb_height; } ;
struct TYPE_8__ {int alive; int can_sleep; scalar_t__ thread; void* video_fifo; void* attr_fifo; void* audio_fifo; scalar_t__ cond; void* cond_lock; void* lock; TYPE_2__ video; TYPE_1__ params; } ;
typedef  TYPE_3__ ffmpeg_t ;

/* Variables and functions */
 int MAX_FRAMES ; 
 int /*<<< orphan*/  ffmpeg_thread ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 void* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static bool FUNC5(ffmpeg_t *handle)
{
   handle->lock = FUNC3();
   handle->cond_lock = FUNC3();
   handle->cond = FUNC2();
   handle->audio_fifo = FUNC0(32000 * sizeof(int16_t) *
         handle->params.channels * MAX_FRAMES / 60); /* Some arbitrary max size. */
   handle->attr_fifo = FUNC0(sizeof(struct record_video_data) * MAX_FRAMES);
   handle->video_fifo = FUNC0(handle->params.fb_width * handle->params.fb_height *
            handle->video.pix_size * MAX_FRAMES);

   handle->alive = true;
   handle->can_sleep = true;
   handle->thread = FUNC4(ffmpeg_thread, handle);

   FUNC1(handle->lock && handle->cond_lock &&
      handle->cond && handle->audio_fifo &&
      handle->attr_fifo && handle->video_fifo && handle->thread);

   return true;
}