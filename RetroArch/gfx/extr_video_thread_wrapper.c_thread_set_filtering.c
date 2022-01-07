
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_video_t ;
struct TYPE_5__ {unsigned int index; int smooth; } ;
struct TYPE_6__ {TYPE_1__ filtering; } ;
struct TYPE_7__ {TYPE_2__ data; int member_0; } ;
typedef TYPE_3__ thread_packet_t ;


 int CMD_POKE_SET_FILTERING ;
 int video_thread_send_and_wait_user_to_thread (int *,TYPE_3__*) ;

__attribute__((used)) static void thread_set_filtering(void *data, unsigned idx, bool smooth)
{
   thread_video_t *thr = (thread_video_t*)data;
   thread_packet_t pkt = { CMD_POKE_SET_FILTERING };

   if (!thr)
      return;
   pkt.data.filtering.index = idx;
   pkt.data.filtering.smooth = smooth;

   video_thread_send_and_wait_user_to_thread(thr, &pkt);
}
