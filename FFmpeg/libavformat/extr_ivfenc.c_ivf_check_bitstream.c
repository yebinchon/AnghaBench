
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct AVFormatContext {TYPE_2__** streams; } ;
struct TYPE_8__ {size_t stream_index; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;


 scalar_t__ AV_CODEC_ID_AV1 ;
 scalar_t__ AV_CODEC_ID_VP9 ;
 int ff_stream_add_bitstream_filter (TYPE_2__*,char*,char*) ;

__attribute__((used)) static int ivf_check_bitstream(struct AVFormatContext *s, const AVPacket *pkt)
{
    int ret = 1;
    AVStream *st = s->streams[pkt->stream_index];

    if (st->codecpar->codec_id == AV_CODEC_ID_VP9)
        ret = ff_stream_add_bitstream_filter(st, "vp9_superframe", ((void*)0));
    else if (st->codecpar->codec_id == AV_CODEC_ID_AV1)
        ret = ff_stream_add_bitstream_filter(st, "av1_metadata", "td=insert");

    return ret;
}
