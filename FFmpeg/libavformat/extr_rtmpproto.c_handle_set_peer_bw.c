
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {int max_sent_unacked; } ;
struct TYPE_8__ {int size; int data; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMPContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_RB32 (int ) ;
 int av_log (TYPE_1__*,int ,char*,int) ;

__attribute__((used)) static int handle_set_peer_bw(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;

    if (pkt->size < 4) {
        av_log(s, AV_LOG_ERROR,
               "Peer bandwidth packet is less than 4 bytes long (%d)\n",
               pkt->size);
        return AVERROR_INVALIDDATA;
    }





    rt->max_sent_unacked = AV_RB32(pkt->data);
    if (rt->max_sent_unacked <= 0) {
        av_log(s, AV_LOG_ERROR, "Incorrect set peer bandwidth %d\n",
               rt->max_sent_unacked);
        return AVERROR_INVALIDDATA;

    }
    av_log(s, AV_LOG_DEBUG, "Max sent, unacked = %d\n", rt->max_sent_unacked);

    return 0;
}
