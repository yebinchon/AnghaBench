
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_9__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {scalar_t__ stream_index; int flags; } ;
struct TYPE_7__ {scalar_t__ filesize; } ;
typedef TYPE_1__ MP3DecContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_EOF ;
 int AV_PKT_FLAG_CORRUPT ;
 int FFMIN (int,scalar_t__) ;
 scalar_t__ ID3v1_TAG_SIZE ;
 int MP3_PACKET_SIZE ;
 int av_get_packet (int ,TYPE_2__*,int) ;
 scalar_t__ avio_tell (int ) ;

__attribute__((used)) static int mp3_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    MP3DecContext *mp3 = s->priv_data;
    int ret, size;
    int64_t pos;

    size = MP3_PACKET_SIZE;
    pos = avio_tell(s->pb);
    if (mp3->filesize > ID3v1_TAG_SIZE && pos < mp3->filesize)
        size= FFMIN(size, mp3->filesize - pos);

    ret = av_get_packet(s->pb, pkt, size);
    if (ret <= 0) {
        if(ret<0)
            return ret;
        return AVERROR_EOF;
    }

    pkt->flags &= ~AV_PKT_FLAG_CORRUPT;
    pkt->stream_index = 0;

    return ret;
}
