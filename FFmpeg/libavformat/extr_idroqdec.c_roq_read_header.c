
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ctx_flags; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int audio_stream_index; int video_stream_index; scalar_t__ audio_frame_count; scalar_t__ video_pts; scalar_t__ audio_channels; scalar_t__ height; scalar_t__ width; int frame_rate; } ;
typedef TYPE_1__ RoqDemuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVFMTCTX_NOHEADER ;
 int AV_RL16 (unsigned char*) ;
 int EIO ;
 int RoQ_CHUNK_PREAMBLE_SIZE ;
 int avio_read (int *,unsigned char*,int) ;

__attribute__((used)) static int roq_read_header(AVFormatContext *s)
{
    RoqDemuxContext *roq = s->priv_data;
    AVIOContext *pb = s->pb;
    unsigned char preamble[RoQ_CHUNK_PREAMBLE_SIZE];


    if (avio_read(pb, preamble, RoQ_CHUNK_PREAMBLE_SIZE) !=
        RoQ_CHUNK_PREAMBLE_SIZE)
        return AVERROR(EIO);
    roq->frame_rate = AV_RL16(&preamble[6]);


    roq->width = roq->height = roq->audio_channels = roq->video_pts =
    roq->audio_frame_count = 0;
    roq->audio_stream_index = -1;
    roq->video_stream_index = -1;

    s->ctx_flags |= AVFMTCTX_NOHEADER;

    return 0;
}
