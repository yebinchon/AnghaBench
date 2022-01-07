
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int* data; int dts; int pts; int pos; int flags; scalar_t__ stream_index; } ;
struct TYPE_8__ {int got_first_packet; } ;
typedef TYPE_1__ CDGContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AV_PKT_FLAG_KEY ;
 int CDG_COMMAND ;
 int CDG_MASK ;
 int CDG_PACKET_SIZE ;
 int av_get_packet (int ,TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;

__attribute__((used)) static int read_packet(AVFormatContext *s, AVPacket *pkt)
{
    CDGContext *priv = s->priv_data;
    int ret;

    while (1) {
        ret = av_get_packet(s->pb, pkt, CDG_PACKET_SIZE);
        if (ret < 1 || (pkt->data[0] & CDG_MASK) == CDG_COMMAND)
            break;
        av_packet_unref(pkt);
    }

    if (!priv->got_first_packet) {
        pkt->flags |= AV_PKT_FLAG_KEY;
        priv->got_first_packet = 1;
    }

    pkt->stream_index = 0;
    pkt->dts=
    pkt->pts= pkt->pos / CDG_PACKET_SIZE;

    if(ret>5 && (pkt->data[0]&0x3F) == 9 && (pkt->data[1]&0x3F)==1 && !(pkt->data[2+2+1] & 0x0F)){
        pkt->flags = AV_PKT_FLAG_KEY;
    }
    return ret;
}
