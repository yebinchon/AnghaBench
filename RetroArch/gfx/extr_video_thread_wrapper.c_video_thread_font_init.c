
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_video_t ;
struct TYPE_5__ {void const** font_driver; void** font_handle; char const* font_path; float font_size; int is_threaded; int api; int return_value; void* video_data; int method; } ;
struct TYPE_6__ {TYPE_1__ font_init; } ;
struct TYPE_7__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ thread_packet_t ;
typedef enum font_driver_render_api { ____Placeholder_font_driver_render_api } font_driver_render_api ;
typedef int custom_font_command_method_t ;


 int CMD_FONT_INIT ;
 scalar_t__ video_driver_get_ptr (int) ;
 int video_thread_send_and_wait (int *,TYPE_3__*) ;

bool video_thread_font_init(const void **font_driver, void **font_handle,
      void *data, const char *font_path, float video_font_size,
      enum font_driver_render_api api, custom_font_command_method_t func,
      bool is_threaded)
{
   thread_packet_t pkt;
   thread_video_t *thr = (thread_video_t*)video_driver_get_ptr(1);

   if (!thr)
      return 0;

   pkt.type = CMD_FONT_INIT;
   pkt.data.font_init.method = func;
   pkt.data.font_init.font_driver = font_driver;
   pkt.data.font_init.font_handle = font_handle;
   pkt.data.font_init.video_data = data;
   pkt.data.font_init.font_path = font_path;
   pkt.data.font_init.font_size = video_font_size;
   pkt.data.font_init.is_threaded = is_threaded;
   pkt.data.font_init.api = api;

   video_thread_send_and_wait(thr, &pkt);

   return pkt.data.font_init.return_value;
}
