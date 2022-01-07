
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_video_t ;
struct TYPE_4__ {unsigned int i; } ;
struct TYPE_5__ {TYPE_1__ data; int member_0; } ;
typedef TYPE_2__ thread_packet_t ;


 int CMD_SET_ROTATION ;
 int video_thread_send_and_wait_user_to_thread (int *,TYPE_2__*) ;

__attribute__((used)) static void video_thread_set_rotation(void *data, unsigned rotation)
{
   thread_video_t *thr = (thread_video_t*)data;
   thread_packet_t pkt = { CMD_SET_ROTATION };

   if (!thr)
      return;

   pkt.data.i = rotation;

   video_thread_send_and_wait_user_to_thread(thr, &pkt);
}
