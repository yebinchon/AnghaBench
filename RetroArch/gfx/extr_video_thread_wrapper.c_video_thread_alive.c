
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int alive; int lock; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_6__ {int b; } ;
struct TYPE_8__ {TYPE_1__ data; int member_0; } ;
typedef TYPE_3__ thread_packet_t ;


 int CMD_ALIVE ;
 int RARCH_CTL_IS_PAUSED ;
 scalar_t__ rarch_ctl (int ,int *) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int video_thread_send_and_wait_user_to_thread (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static bool video_thread_alive(void *data)
{
   bool ret;
   thread_video_t *thr = (thread_video_t*)data;

   if (rarch_ctl(RARCH_CTL_IS_PAUSED, ((void*)0)))
   {
      thread_packet_t pkt = { CMD_ALIVE };

      video_thread_send_and_wait_user_to_thread(thr, &pkt);
      return pkt.data.b;
   }

   slock_lock(thr->lock);
   ret = thr->alive;
   slock_unlock(thr->lock);

   return ret;
}
