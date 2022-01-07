
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_video_t ;
typedef int thread_packet_t ;


 int video_thread_send_packet (int *,int *) ;
 int video_thread_wait_reply (int *,int *) ;

__attribute__((used)) static void video_thread_send_and_wait_user_to_thread(thread_video_t *thr, thread_packet_t *pkt)
{
   video_thread_send_packet(thr, pkt);
   video_thread_wait_reply(thr, pkt);
}
