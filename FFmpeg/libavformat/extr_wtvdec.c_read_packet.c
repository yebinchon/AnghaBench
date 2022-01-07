
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pts; int * pb; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int stream_index; int pts; } ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int SEEK_TO_DATA ;
 scalar_t__ WTV_PAD8 (int) ;
 int av_get_packet (int *,TYPE_2__*,int) ;
 int avio_skip (int *,scalar_t__) ;
 int parse_chunks (TYPE_3__*,int ,int ,int*) ;

__attribute__((used)) static int read_packet(AVFormatContext *s, AVPacket *pkt)
{
    WtvContext *wtv = s->priv_data;
    AVIOContext *pb = wtv->pb;
    int stream_index, len, ret;

    stream_index = parse_chunks(s, SEEK_TO_DATA, 0, &len);
    if (stream_index < 0)
        return stream_index;

    ret = av_get_packet(pb, pkt, len - 32);
    if (ret < 0)
        return ret;
    pkt->stream_index = stream_index;
    pkt->pts = wtv->pts;
    avio_skip(pb, WTV_PAD8(len) - len);
    return 0;
}
