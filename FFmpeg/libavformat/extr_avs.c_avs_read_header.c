
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pb; int ctx_flags; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int width; int height; int * st_audio; int st_video; scalar_t__ remaining_audio_size; scalar_t__ remaining_frame_size; int nb_frames; void* fps; void* bits_per_sample; } ;
typedef TYPE_1__ AvsFormat ;
typedef TYPE_2__ AVFormatContext ;


 int AVFMTCTX_NOHEADER ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*,int,int) ;
 void* avio_rl16 (int ) ;
 int avio_rl32 (int ) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static int avs_read_header(AVFormatContext * s)
{
    AvsFormat *avs = s->priv_data;

    s->ctx_flags |= AVFMTCTX_NOHEADER;

    avio_skip(s->pb, 4);
    avs->width = avio_rl16(s->pb);
    avs->height = avio_rl16(s->pb);
    avs->bits_per_sample = avio_rl16(s->pb);
    avs->fps = avio_rl16(s->pb);
    avs->nb_frames = avio_rl32(s->pb);
    avs->remaining_frame_size = 0;
    avs->remaining_audio_size = 0;

    avs->st_video = avs->st_audio = ((void*)0);

    if (avs->width != 318 || avs->height != 198)
        av_log(s, AV_LOG_ERROR, "This avs pretend to be %dx%d "
               "when the avs format is supposed to be 318x198 only.\n",
               avs->width, avs->height);

    return 0;
}
