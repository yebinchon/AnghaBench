
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ctx_flags; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int video_index; int audio_index; int sample_rate; void* bethsoft_global_delay; void* height; void* width; void* nframes; } ;
typedef TYPE_1__ BVID_DemuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVFMTCTX_NOHEADER ;
 int DEFAULT_SAMPLE_RATE ;
 void* avio_rl16 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int vid_read_header(AVFormatContext *s)
{
    BVID_DemuxContext *vid = s->priv_data;
    AVIOContext *pb = s->pb;





    avio_skip(pb, 5);
    vid->nframes = avio_rl16(pb);
    vid->width = avio_rl16(pb);
    vid->height = avio_rl16(pb);
    vid->bethsoft_global_delay = avio_rl16(pb);
    avio_rl16(pb);


    vid->video_index = -1;
    vid->audio_index = -1;
    vid->sample_rate = DEFAULT_SAMPLE_RATE;
    s->ctx_flags |= AVFMTCTX_NOHEADER;

    return 0;
}
