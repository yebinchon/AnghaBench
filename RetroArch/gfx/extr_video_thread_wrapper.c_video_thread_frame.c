
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int refresh_rate; } ;
typedef TYPE_5__ video_frame_info_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_13__ {int updated; unsigned int width; unsigned int height; unsigned int pitch; char* msg; int count; int * buffer; scalar_t__ within_thread; } ;
struct TYPE_12__ {scalar_t__ enable; } ;
struct TYPE_11__ {scalar_t__ rgb32; } ;
struct TYPE_15__ {scalar_t__ last_time; int lock; int miss_count; int hit_count; int cond_cmd; TYPE_4__ frame; TYPE_3__ texture; int cond_thread; int nonblock; TYPE_2__ info; int driver_data; TYPE_1__* driver; } ;
typedef TYPE_6__ thread_video_t ;
typedef scalar_t__ retro_time_t ;
struct TYPE_10__ {int (* frame ) (int ,void const*,unsigned int,unsigned int,int ,unsigned int,char const*,TYPE_5__*) ;} ;


 scalar_t__ cpu_features_get_time_usec () ;
 int memcpy (int *,int const*,unsigned int) ;
 int roundf (int) ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int scond_wait_timeout (int ,int ,scalar_t__) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int strlcpy (char*,char const*,int) ;
 int stub1 (int ,void const*,unsigned int,unsigned int,int ,unsigned int,char const*,TYPE_5__*) ;
 int thread_update_driver_state (TYPE_6__*) ;

__attribute__((used)) static bool video_thread_frame(void *data, const void *frame_,
      unsigned width, unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   unsigned copy_stride;
   const uint8_t *src = ((void*)0);
   uint8_t *dst = ((void*)0);
   thread_video_t *thr = (thread_video_t*)data;



   if (thr->frame.within_thread)
   {
      thread_update_driver_state(thr);

      if (thr->driver && thr->driver->frame)
         return thr->driver->frame(thr->driver_data, frame_,
               width, height, frame_count, pitch, msg, video_info);
      return 0;
   }

   copy_stride = width * (thr->info.rgb32
         ? sizeof(uint32_t) : sizeof(uint16_t));

   src = (const uint8_t*)frame_;
   dst = thr->frame.buffer;

   slock_lock(thr->lock);

   if (!thr->nonblock)
   {

      retro_time_t target_frame_time = (retro_time_t)
         roundf(1000000 / video_info->refresh_rate);
      retro_time_t target = thr->last_time + target_frame_time;


      while (thr->frame.updated)
      {
         retro_time_t current = cpu_features_get_time_usec();
         retro_time_t delta = target - current;

         if (delta <= 0)
            break;

         if (!scond_wait_timeout(thr->cond_cmd, thr->lock, delta))
            break;
      }
   }



   if (!thr->frame.updated)
   {
      if (src)
      {
         unsigned h;
         for (h = 0; h < height; h++, src += pitch, dst += copy_stride)
            memcpy(dst, src, copy_stride);
      }

      thr->frame.updated = 1;
      thr->frame.width = width;
      thr->frame.height = height;
      thr->frame.count = frame_count;
      thr->frame.pitch = copy_stride;

      if (msg)
         strlcpy(thr->frame.msg, msg, sizeof(thr->frame.msg));
      else
         *thr->frame.msg = '\0';

      scond_signal(thr->cond_thread);
      thr->hit_count++;
   }
   else
      thr->miss_count++;

   slock_unlock(thr->lock);

   thr->last_time = cpu_features_get_time_usec();
   return 1;
}
