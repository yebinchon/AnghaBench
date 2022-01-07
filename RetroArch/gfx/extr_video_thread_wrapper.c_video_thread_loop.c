
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int updated; int lock; scalar_t__* msg; int pitch; int count; int height; int width; int buffer; } ;
struct TYPE_8__ {scalar_t__ send_cmd; int alive; int focus; int has_windowed; int lock; int cond_cmd; struct video_viewport vp; TYPE_2__ frame; int driver_data; TYPE_1__* driver; int cmd_data; int cond_thread; } ;
typedef TYPE_3__ thread_video_t ;
typedef int thread_packet_t ;
struct TYPE_6__ {int (* frame ) (int ,int ,int ,int ,int ,int ,scalar_t__*,int *) ;int (* viewport_info ) (int ,struct video_viewport*) ;scalar_t__ (* has_windowed ) (int ) ;scalar_t__ (* focus ) (int ) ;scalar_t__ (* alive ) (int ) ;} ;


 scalar_t__ CMD_VIDEO_NONE ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int stub1 (int ,int ,int ,int ,int ,int ,scalar_t__*,int *) ;
 scalar_t__ stub2 (int ) ;
 scalar_t__ stub3 (int ) ;
 scalar_t__ stub4 (int ) ;
 int stub5 (int ,struct video_viewport*) ;
 int thread_update_driver_state (TYPE_3__*) ;
 int video_driver_build_info (int *) ;
 scalar_t__ video_thread_handle_packet (TYPE_3__*,int *) ;

__attribute__((used)) static void video_thread_loop(void *data)
{
   thread_video_t *thr = (thread_video_t*)data;

   for (;;)
   {
      thread_packet_t pkt;
      bool updated = 0;

      slock_lock(thr->lock);
      while (thr->send_cmd == CMD_VIDEO_NONE && !thr->frame.updated)
         scond_wait(thr->cond_thread, thr->lock);
      if (thr->frame.updated)
         updated = 1;



      pkt = thr->cmd_data;

      slock_unlock(thr->lock);

      if (video_thread_handle_packet(thr, &pkt))
         return;

      if (updated)
      {
         struct video_viewport vp;
         bool ret = 0;
         bool alive = 0;
         bool focus = 0;
         bool has_windowed = 1;

         vp.x = 0;
         vp.y = 0;
         vp.width = 0;
         vp.height = 0;
         vp.full_width = 0;
         vp.full_height = 0;

         slock_lock(thr->frame.lock);

         thread_update_driver_state(thr);

         if (thr->driver && thr->driver->frame)
         {
            video_frame_info_t video_info;
            video_driver_build_info(&video_info);

            ret = thr->driver->frame(thr->driver_data,
                  thr->frame.buffer, thr->frame.width, thr->frame.height,
                  thr->frame.count,
                  thr->frame.pitch, *thr->frame.msg ? thr->frame.msg : ((void*)0),
                  &video_info);
         }

         slock_unlock(thr->frame.lock);

         if (thr->driver && thr->driver->alive)
            alive = ret && thr->driver->alive(thr->driver_data);

         if (thr->driver && thr->driver->focus)
            focus = ret && thr->driver->focus(thr->driver_data);

         if (thr->driver && thr->driver->has_windowed)
            has_windowed = ret && thr->driver->has_windowed(thr->driver_data);

         if (thr->driver && thr->driver->viewport_info)
            thr->driver->viewport_info(thr->driver_data, &vp);

         slock_lock(thr->lock);
         thr->alive = alive;
         thr->focus = focus;
         thr->has_windowed = has_windowed;
         thr->frame.updated = 0;
         thr->vp = vp;
         scond_signal(thr->cond_cmd);
         slock_unlock(thr->lock);
      }
   }
}
