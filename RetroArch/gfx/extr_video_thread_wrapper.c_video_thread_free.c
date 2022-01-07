
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int lock; TYPE_3__* buffer; } ;
struct TYPE_8__ {TYPE_3__* frame; } ;
struct TYPE_10__ {int miss_count; int hit_count; int alpha_lock; struct TYPE_10__* alpha_mod; int cond_thread; int cond_cmd; int lock; TYPE_2__ frame; TYPE_1__ texture; int thread; } ;
typedef TYPE_3__ thread_video_t ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_4__ thread_packet_t ;


 int CMD_FREE ;
 int RARCH_LOG (char*,int ,int ) ;
 int free (TYPE_3__*) ;
 int scond_free (int ) ;
 int slock_free (int ) ;
 int sthread_join (int ) ;
 int video_thread_send_and_wait_user_to_thread (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void video_thread_free(void *data)
{
   thread_video_t *thr = (thread_video_t*)data;
   thread_packet_t pkt = { CMD_FREE };

   if (!thr)
      return;

   video_thread_send_and_wait_user_to_thread(thr, &pkt);

   sthread_join(thr->thread);




   free(thr->frame.buffer);
   slock_free(thr->frame.lock);
   slock_free(thr->lock);
   scond_free(thr->cond_cmd);
   scond_free(thr->cond_thread);

   free(thr->alpha_mod);
   slock_free(thr->alpha_lock);

   RARCH_LOG("Threaded video stats: Frames pushed: %u, Frames dropped: %u.\n",
         thr->hit_count, thr->miss_count);

   free(thr);
}
