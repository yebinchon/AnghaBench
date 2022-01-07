
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int stream_index; } ;
struct TYPE_7__ {int video_frame_size; int (* get_int ) (int *) ;int audio_size_left; int audio_size_counter; int audio_frame_size; } ;
typedef TYPE_1__ MviDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int EIO ;
 int MVI_AUDIO_STREAM_INDEX ;
 int MVI_FRAC_BITS ;
 int MVI_VIDEO_STREAM_INDEX ;
 int av_get_packet (int *,TYPE_2__*,int) ;
 int stub1 (int *) ;

__attribute__((used)) static int read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int ret, count;
    MviDemuxContext *mvi = s->priv_data;
    AVIOContext *pb = s->pb;

    if (mvi->video_frame_size == 0) {
        mvi->video_frame_size = (mvi->get_int)(pb);
        if (mvi->audio_size_left == 0)
            return AVERROR(EIO);
        count = (mvi->audio_size_counter + mvi->audio_frame_size + 512) >> MVI_FRAC_BITS;
        if (count > mvi->audio_size_left)
            count = mvi->audio_size_left;
        if ((ret = av_get_packet(pb, pkt, count)) < 0)
            return ret;
        pkt->stream_index = MVI_AUDIO_STREAM_INDEX;
        mvi->audio_size_left -= count;
        mvi->audio_size_counter += mvi->audio_frame_size - (count << MVI_FRAC_BITS);
    } else {
        if ((ret = av_get_packet(pb, pkt, mvi->video_frame_size)) < 0)
            return ret;
        pkt->stream_index = MVI_VIDEO_STREAM_INDEX;
        mvi->video_frame_size = 0;
    }
    return 0;
}
