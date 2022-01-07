
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sample_rate; } ;
struct TYPE_7__ {int size; scalar_t__ data; } ;
struct TYPE_6__ {double interpolate_fps; float height; float aspect; scalar_t__ width; int sample_rate; } ;
struct TYPE_5__ {float height; int sample_aspect_ratio; scalar_t__ width; } ;


 int ASS_HINTING_LIGHT ;
 TYPE_4__** actx ;
 int ass ;
 int ass_add_font (int ,char*,char*,int ) ;
 scalar_t__* ass_extra_data ;
 int * ass_extra_data_size ;
 int ass_library_init () ;
 int ass_msg_cb ;
 int ass_new_track (int ) ;
 int ass_process_codec_private (int ,char*,int ) ;
 int ass_render ;
 int ass_renderer_init (int ) ;
 int ass_set_extract_fonts (int ,int) ;
 int ass_set_fonts (int ,int *,int *,int,int *,int) ;
 int ass_set_frame_size (int ,scalar_t__,float) ;
 int ass_set_hinting (int ,int ) ;
 int ass_set_message_cb (int ,int ,int *) ;
 int * ass_track ;
 TYPE_3__* attachments ;
 unsigned int attachments_size ;
 float av_q2d (int ) ;
 TYPE_2__ media ;
 scalar_t__* sctx ;
 scalar_t__ subtitle_streams_num ;
 TYPE_1__* vctx ;

__attribute__((used)) static bool init_media_info(void)
{
   if (actx[0])
      media.sample_rate = actx[0]->sample_rate;

   media.interpolate_fps = 60.0;

   if (vctx)
   {
      media.width = vctx->width;
      media.height = vctx->height;
      media.aspect = (float)vctx->width *
         av_q2d(vctx->sample_aspect_ratio) / vctx->height;
   }
   return 1;
}
