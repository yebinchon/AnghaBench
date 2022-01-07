
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int index; } ;
struct TYPE_11__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int flags; int stream_index; } ;
struct TYPE_9__ {int remaining_audio_size; TYPE_6__* st_audio; } ;
typedef TYPE_1__ AvsFormat ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 int avio_tell (int ) ;
 int ff_voc_get_packet (TYPE_3__*,TYPE_2__*,TYPE_6__*,int) ;

__attribute__((used)) static int avs_read_audio_packet(AVFormatContext * s, AVPacket * pkt)
{
    AvsFormat *avs = s->priv_data;
    int ret, size;

    size = avio_tell(s->pb);
    ret = ff_voc_get_packet(s, pkt, avs->st_audio, avs->remaining_audio_size);
    size = avio_tell(s->pb) - size;
    avs->remaining_audio_size -= size;

    if (ret == AVERROR(EIO))
        return 0;
    if (ret < 0)
        return ret;

    pkt->stream_index = avs->st_audio->index;
    pkt->flags |= AV_PKT_FLAG_KEY;

    return size;
}
