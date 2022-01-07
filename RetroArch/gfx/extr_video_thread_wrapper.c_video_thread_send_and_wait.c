
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* send_and_wait ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ thread_video_t ;
typedef int thread_packet_t ;


 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static void video_thread_send_and_wait(thread_video_t *thr,
      thread_packet_t *pkt)
{
   if (!thr || !pkt)
      return;
   thr->send_and_wait(thr, pkt);
}
