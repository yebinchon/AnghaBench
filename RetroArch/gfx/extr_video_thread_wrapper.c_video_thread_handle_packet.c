
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_15__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int vp ;
typedef int video_frame_info_t ;
typedef int uint8_t ;
struct TYPE_26__ {int within_thread; } ;
struct video_viewport {int full_height; int full_width; int height; int width; int y; int x; } ;
struct TYPE_24__ {int alpha_mods; float* alpha_mod; int * driver_data; TYPE_8__* poke; TYPE_5__* overlay; TYPE_13__* driver; TYPE_1__ frame; int is_idle; int read_vp; struct video_viewport vp; int input_data; int input; int info; } ;
typedef TYPE_14__ thread_video_t ;
struct TYPE_21__ {int data; int (* method ) (int ) ;int return_value; } ;
struct TYPE_20__ {int is_threaded; int api; int font_size; int font_path; int video_data; int font_handle; int font_driver; int (* method ) (int ,int ,int ,int ,int ,int ,int ) ;int return_value; } ;
struct TYPE_34__ {int params; int msg; } ;
struct TYPE_32__ {int smooth; int index; } ;
struct TYPE_31__ {int fullscreen; int height; int width; } ;
struct TYPE_29__ {int h; int w; int y; int x; int index; } ;
struct TYPE_28__ {int num; int data; } ;
struct TYPE_27__ {int path; int type; } ;
struct TYPE_22__ {int b; TYPE_11__ custom_command; TYPE_10__ font_init; TYPE_9__ osd_message; int i; TYPE_7__ filtering; TYPE_6__ new_mode; TYPE_4__ rect; TYPE_3__ image; TYPE_2__ set_shader; scalar_t__ v; } ;
struct TYPE_25__ {int type; TYPE_12__ data; } ;
typedef TYPE_15__ thread_packet_t ;
struct TYPE_33__ {int (* set_osd_msg ) (int *,int *,int ,int *,int *) ;int (* set_aspect_ratio ) (int *,int ) ;int (* set_filtering ) (int *,int ,int ) ;int (* set_video_mode ) (int *,int ,int ,int ) ;} ;
struct TYPE_30__ {int (* load ) (int *,int ,int) ;int (* full_screen ) (int *,int) ;int (* vertex_geom ) (int *,int ,int ,int ,int ,int ) ;int (* tex_geom ) (int *,int ,int ,int ,int ,int ) ;int (* enable ) (int *,int) ;} ;
struct TYPE_23__ {int (* read_viewport ) (int *,int *,int ) ;int (* set_shader ) (int *,int ,int ) ;int (* alive ) (int *) ;int (* viewport_info ) (int *,struct video_viewport*) ;int (* set_rotation ) (int *,int ) ;int (* free ) (int *) ;int * (* init ) (int *,int ,int ) ;} ;
 scalar_t__ realloc (float*,int) ;
 int string_is_equal_fast (struct video_viewport*,int *,int) ;
 int * stub1 (int *,int ,int ) ;
 int stub10 (int *,int ,int) ;
 int stub11 (int *,int ,int ,int ,int ,int ) ;
 int stub12 (int *,int ,int ,int ,int ,int ) ;
 int stub13 (int *,int) ;
 int stub14 (int *,int ,int ,int ) ;
 int stub15 (int *,int ,int ) ;
 int stub16 (int *,int ) ;
 int stub17 (int *,int *,int ,int *,int *) ;
 int stub18 (int ,int ,int ,int ,int ,int ,int ) ;
 int stub19 (int ) ;
 int stub2 (int *,struct video_viewport*) ;
 int stub3 (int *) ;
 int stub4 (int *,int ) ;
 int stub5 (int *,struct video_viewport*) ;
 int stub6 (int *,int *,int ) ;
 int stub7 (int *,int ,int ) ;
 int stub8 (int *) ;
 int stub9 (int *,int) ;
 int video_driver_build_info (int *) ;
 int video_thread_reply (TYPE_14__*,TYPE_15__*) ;

__attribute__((used)) static bool video_thread_handle_packet(
      thread_video_t *thr,
      const thread_packet_t *incoming)
{



   thread_packet_t pkt = *incoming;
   bool ret = 0;

   switch (pkt.type)
   {
      case 141:
         thr->driver_data = thr->driver->init(&thr->info,
               thr->input, thr->input_data);
         pkt.data.b = (thr->driver_data != ((void*)0));
         thr->driver->viewport_info(thr->driver_data, &thr->vp);
         video_thread_reply(thr, &pkt);
         break;

      case 142:
         if (thr->driver_data)
         {
            if (thr->driver && thr->driver->free)
               thr->driver->free(thr->driver_data);
         }
         thr->driver_data = ((void*)0);
         video_thread_reply(thr, &pkt);
         return 1;

      case 130:
         if (thr->driver && thr->driver->set_rotation)
            thr->driver->set_rotation(thr->driver_data, pkt.data.i);
         video_thread_reply(thr, &pkt);
         break;

      case 131:
      {
         struct video_viewport vp;

         vp.x = 0;
         vp.y = 0;
         vp.width = 0;
         vp.height = 0;
         vp.full_width = 0;
         vp.full_height = 0;

         thr->driver->viewport_info(thr->driver_data, &vp);

         if (string_is_equal_fast(&vp, &thr->read_vp, sizeof(vp)))
         {
            thr->frame.within_thread = 1;

            if (thr->driver->read_viewport)
               ret = thr->driver->read_viewport(thr->driver_data,
                     (uint8_t*)pkt.data.v, thr->is_idle);

            pkt.data.b = ret;
            thr->frame.within_thread = 0;
         }
         else
         {


            pkt.data.b = 0;
         }
         video_thread_reply(thr, &pkt);
         break;
      }

      case 129:
         if (thr->driver && thr->driver->set_shader)
            ret = thr->driver->set_shader(thr->driver_data,
                     pkt.data.set_shader.type,
                     pkt.data.set_shader.path);

         pkt.data.b = ret;
         video_thread_reply(thr, &pkt);
         break;

      case 145:
         if (thr->driver && thr->driver->alive)
            ret = thr->driver->alive(thr->driver_data);

         pkt.data.b = ret;
         video_thread_reply(thr, &pkt);
         break;
      case 132:
         if (thr->poke && thr->poke->set_video_mode)
            thr->poke->set_video_mode(thr->driver_data,
                  pkt.data.new_mode.width,
                  pkt.data.new_mode.height,
                  pkt.data.new_mode.fullscreen);
         video_thread_reply(thr, &pkt);
         break;
      case 134:
         if (thr->poke && thr->poke->set_filtering)
            thr->poke->set_filtering(thr->driver_data,
                  pkt.data.filtering.index,
                  pkt.data.filtering.smooth);
         video_thread_reply(thr, &pkt);
         break;

      case 135:
         if (thr->poke && thr->poke->set_aspect_ratio)
            thr->poke->set_aspect_ratio(thr->driver_data,
                  pkt.data.i);
         video_thread_reply(thr, &pkt);
         break;

      case 133:
         {
            video_frame_info_t video_info;
            video_driver_build_info(&video_info);
            if (thr->poke && thr->poke->set_osd_msg)
               thr->poke->set_osd_msg(thr->driver_data,
                     &video_info,
                     pkt.data.osd_message.msg,
                     &pkt.data.osd_message.params, ((void*)0));
         }
         video_thread_reply(thr, &pkt);
         break;

      case 143:
         if (pkt.data.font_init.method)
            pkt.data.font_init.return_value =
                  pkt.data.font_init.method
                  (pkt.data.font_init.font_driver,
                     pkt.data.font_init.font_handle,
                     pkt.data.font_init.video_data,
                     pkt.data.font_init.font_path,
                     pkt.data.font_init.font_size,
                     pkt.data.font_init.api,
                     pkt.data.font_init.is_threaded);
         video_thread_reply(thr, &pkt);
         break;

      case 144:
         if (pkt.data.custom_command.method)
            pkt.data.custom_command.return_value =
                  pkt.data.custom_command.method
                  (pkt.data.custom_command.data);
         video_thread_reply(thr, &pkt);
         break;

      case 128:


         break;
      default:
         video_thread_reply(thr, &pkt);
         break;
   }

   return 0;
}
