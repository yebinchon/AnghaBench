
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_video_t ;
struct TYPE_5__ {int return_value; void* data; int method; } ;
struct TYPE_6__ {TYPE_1__ custom_command; } ;
struct TYPE_7__ {TYPE_2__ data; int member_0; } ;
typedef TYPE_3__ thread_packet_t ;
typedef int custom_command_method_t ;


 int CMD_CUSTOM_COMMAND ;
 scalar_t__ video_driver_get_ptr (int) ;
 int video_thread_send_and_wait (int *,TYPE_3__*) ;

unsigned video_thread_texture_load(void *data,
      custom_command_method_t func)
{
   thread_video_t *thr = (thread_video_t*)video_driver_get_ptr(1);
   thread_packet_t pkt = { CMD_CUSTOM_COMMAND };

   if (!thr)
      return 0;

   pkt.data.custom_command.method = func;
   pkt.data.custom_command.data = (void*)data;

   video_thread_send_and_wait(thr, &pkt);

   return pkt.data.custom_command.return_value;
}
