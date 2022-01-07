
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_video_t ;
struct TYPE_5__ {int type; char const* path; } ;
struct TYPE_6__ {int b; TYPE_1__ set_shader; } ;
struct TYPE_7__ {TYPE_2__ data; int member_0; } ;
typedef TYPE_3__ thread_packet_t ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int CMD_SET_SHADER ;
 int video_thread_send_and_wait_user_to_thread (int *,TYPE_3__*) ;

__attribute__((used)) static bool video_thread_set_shader(void *data,
      enum rarch_shader_type type, const char *path)
{
   thread_video_t *thr = (thread_video_t*)data;
   thread_packet_t pkt = {CMD_SET_SHADER};
   if (!thr)
      return 0;

   pkt.data.set_shader.type = type;
   pkt.data.set_shader.path = path;

   video_thread_send_and_wait_user_to_thread(thr, &pkt);

   return pkt.data.b;
}
