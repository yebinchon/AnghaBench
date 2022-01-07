
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int rep_data_len; } ;
struct TYPE_7__ {int data_size; int size_left; void* dts; int avpkt; } ;
struct TYPE_6__ {int * pb; TYPE_3__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFPacket ;
typedef TYPE_3__ ASFContext ;


 int AVERROR_INVALIDDATA ;
 int av_new_packet (int *,int) ;
 void* avio_rl32 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int asf_read_replicated_data(AVFormatContext *s, ASFPacket *asf_pkt)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret, data_size;

    if (!asf_pkt->data_size) {
        data_size = avio_rl32(pb);
        if (data_size <= 0)
            return AVERROR_INVALIDDATA;
        if ((ret = av_new_packet(&asf_pkt->avpkt, data_size)) < 0)
            return ret;
        asf_pkt->data_size = asf_pkt->size_left = data_size;
    } else
        avio_skip(pb, 4);
    asf_pkt->dts = avio_rl32(pb);
    if (asf->rep_data_len >= 8)
        avio_skip(pb, asf->rep_data_len - 8);

    return 0;
}
