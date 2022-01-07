
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {scalar_t__ reply_cmd; int lock; TYPE_2__ cmd_data; int cond_cmd; } ;
typedef TYPE_1__ thread_video_t ;
typedef TYPE_2__ thread_packet_t ;


 scalar_t__ CMD_VIDEO_NONE ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void video_thread_wait_reply(thread_video_t *thr, thread_packet_t *pkt)
{
   slock_lock(thr->lock);

   while (pkt->type != thr->reply_cmd)
      scond_wait(thr->cond_cmd, thr->lock);

   *pkt = thr->cmd_data;
   thr->cmd_data.type = CMD_VIDEO_NONE;

   slock_unlock(thr->lock);
}
