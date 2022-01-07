
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef struct record_video_data {unsigned int width; unsigned int height; unsigned int pitch; scalar_t__ data; scalar_t__ is_dupe; } const record_video_data ;
typedef struct record_video_data uint8_t ;
struct TYPE_3__ {int frame_drop_count; int frame_drop_ratio; int pix_size; } ;
struct TYPE_4__ {int can_sleep; int cond; int lock; int video_fifo; int attr_fifo; TYPE_1__ video; int cond_lock; int alive; } ;
typedef TYPE_2__ ffmpeg_t ;
typedef int attr_data ;


 int fifo_write (int ,struct record_video_data const*,int) ;
 unsigned int fifo_write_avail (int ) ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static bool ffmpeg_push_video(void *data,
      const struct record_video_data *vid)
{
   unsigned y;
   bool drop_frame;
   struct record_video_data attr_data;
   ffmpeg_t *handle = (ffmpeg_t*)data;
   int offset = 0;

   if (!handle || !vid)
      return 0;

   drop_frame = handle->video.frame_drop_count++ %
      handle->video.frame_drop_ratio;

   handle->video.frame_drop_count %= handle->video.frame_drop_ratio;

   if (drop_frame)
      return 1;

   for (;;)
   {
      unsigned avail;
      slock_lock(handle->lock);
      avail = fifo_write_avail(handle->attr_fifo);
      slock_unlock(handle->lock);

      if (!handle->alive)
         return 0;

      if (avail >= sizeof(*vid))
         break;

      slock_lock(handle->cond_lock);
      if (handle->can_sleep)
      {
         handle->can_sleep = 0;
         scond_wait(handle->cond, handle->cond_lock);
         handle->can_sleep = 1;
      }
      else
         scond_signal(handle->cond);

      slock_unlock(handle->cond_lock);
   }

   slock_lock(handle->lock);




   attr_data = *vid;

   if (attr_data.is_dupe)
      attr_data.width = attr_data.height = attr_data.pitch = 0;
   else
      attr_data.pitch = attr_data.width * handle->video.pix_size;

   fifo_write(handle->attr_fifo, &attr_data, sizeof(attr_data));

   for (y = 0; y < attr_data.height; y++, offset += vid->pitch)
      fifo_write(handle->video_fifo,
            (const uint8_t*)vid->data + offset, attr_data.pitch);

   slock_unlock(handle->lock);
   scond_signal(handle->cond);

   return 1;
}
