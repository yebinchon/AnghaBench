
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int block_align; } ;
struct TYPE_11__ {int pb; TYPE_1__** streams; } ;
struct TYPE_10__ {int duration; int data; int pos; scalar_t__ stream_index; } ;
struct TYPE_9__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR (int ) ;
 int EIO ;
 int av_new_packet (TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 int avio_read (int ,int ,int) ;
 int avio_tell (int ) ;

__attribute__((used)) static int ilbc_read_packet(AVFormatContext *s,
                          AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    int ret;

    if ((ret = av_new_packet(pkt, par->block_align)) < 0)
        return ret;

    pkt->stream_index = 0;
    pkt->pos = avio_tell(s->pb);
    pkt->duration = par->block_align == 38 ? 160 : 240;
    if ((ret = avio_read(s->pb, pkt->data, par->block_align)) != par->block_align) {
        av_packet_unref(pkt);
        return ret < 0 ? ret : AVERROR(EIO);
    }

    return 0;
}
