
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int counter; } ;
typedef TYPE_1__ DSSDemuxContext ;
typedef int AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ DSS_AUDIO_BLOCK_HEADER_SIZE ;
 scalar_t__ DSS_BLOCK_SIZE ;
 int avio_skip (int *,scalar_t__) ;

__attribute__((used)) static void dss_skip_audio_header(AVFormatContext *s, AVPacket *pkt)
{
    DSSDemuxContext *ctx = s->priv_data;
    AVIOContext *pb = s->pb;

    avio_skip(pb, DSS_AUDIO_BLOCK_HEADER_SIZE);
    ctx->counter += DSS_BLOCK_SIZE - DSS_AUDIO_BLOCK_HEADER_SIZE;
}
