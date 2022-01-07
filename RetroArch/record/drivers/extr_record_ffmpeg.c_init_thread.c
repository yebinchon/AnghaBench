
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct record_video_data {int dummy; } ;
typedef int int16_t ;
struct TYPE_7__ {int pix_size; } ;
struct TYPE_6__ {int channels; int fb_width; int fb_height; } ;
struct TYPE_8__ {int alive; int can_sleep; scalar_t__ thread; void* video_fifo; void* attr_fifo; void* audio_fifo; scalar_t__ cond; void* cond_lock; void* lock; TYPE_2__ video; TYPE_1__ params; } ;
typedef TYPE_3__ ffmpeg_t ;


 int MAX_FRAMES ;
 int ffmpeg_thread ;
 void* fifo_new (int) ;
 int retro_assert (int) ;
 scalar_t__ scond_new () ;
 void* slock_new () ;
 scalar_t__ sthread_create (int ,TYPE_3__*) ;

__attribute__((used)) static bool init_thread(ffmpeg_t *handle)
{
   handle->lock = slock_new();
   handle->cond_lock = slock_new();
   handle->cond = scond_new();
   handle->audio_fifo = fifo_new(32000 * sizeof(int16_t) *
         handle->params.channels * MAX_FRAMES / 60);
   handle->attr_fifo = fifo_new(sizeof(struct record_video_data) * MAX_FRAMES);
   handle->video_fifo = fifo_new(handle->params.fb_width * handle->params.fb_height *
            handle->video.pix_size * MAX_FRAMES);

   handle->alive = 1;
   handle->can_sleep = 1;
   handle->thread = sthread_create(ffmpeg_thread, handle);

   retro_assert(handle->lock && handle->cond_lock &&
      handle->cond && handle->audio_fifo &&
      handle->attr_fifo && handle->video_fifo && handle->thread);

   return 1;
}
