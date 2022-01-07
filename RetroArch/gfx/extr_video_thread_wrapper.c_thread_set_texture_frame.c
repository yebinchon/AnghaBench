
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {size_t frame_cap; int frame_updated; int rgb32; unsigned int width; unsigned int height; float alpha; scalar_t__ frame; } ;
struct TYPE_6__ {TYPE_2__ frame; TYPE_1__ texture; } ;
typedef TYPE_3__ thread_video_t ;


 int memcpy (scalar_t__,void const*,size_t) ;
 scalar_t__ realloc (scalar_t__,size_t) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void thread_set_texture_frame(void *data, const void *frame,
      bool rgb32, unsigned width, unsigned height, float alpha)
{
   thread_video_t *thr = (thread_video_t*)data;
   size_t required = width * height *
      (rgb32 ? sizeof(uint32_t) : sizeof(uint16_t));

   slock_lock(thr->frame.lock);

   if (required > thr->texture.frame_cap)
   {
      thr->texture.frame = realloc(thr->texture.frame, required);
      thr->texture.frame_cap = required;
   }

   if (thr->texture.frame)
   {
      memcpy(thr->texture.frame, frame, required);
      thr->texture.frame_updated = 1;
      thr->texture.rgb32 = rgb32;
      thr->texture.width = width;
      thr->texture.height = height;
      thr->texture.alpha = alpha;
   }
   slock_unlock(thr->frame.lock);
}
