
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int is_idle; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_6__ {int b; int * v; } ;
struct TYPE_8__ {TYPE_1__ data; int member_0; } ;
typedef TYPE_3__ thread_packet_t ;


 int CMD_READ_VIEWPORT ;
 int video_thread_send_and_wait_user_to_thread (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static bool video_thread_read_viewport(void *data, uint8_t *buffer, bool is_idle)
{
   thread_video_t *thr = (thread_video_t*)data;
   thread_packet_t pkt = { CMD_READ_VIEWPORT };

   if (!thr)
      return 0;

   pkt.data.v = buffer;
   thr->is_idle = is_idle;

   video_thread_send_and_wait_user_to_thread(thr, &pkt);

   return pkt.data.b;
}
