
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int pkt; } ;
typedef TYPE_1__ AVPacketList ;
typedef int AVPacket ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FF_PACKETLIST_FLAG_REF_PACKET ;
 int av_free (TYPE_1__*) ;
 TYPE_1__* av_mallocz (int) ;
 int av_packet_make_refcounted (int *) ;
 int av_packet_move_ref (int *,int *) ;
 int av_packet_ref (int *,int *) ;

int ff_packet_list_put(AVPacketList **packet_buffer,
                       AVPacketList **plast_pktl,
                       AVPacket *pkt, int flags)
{
    AVPacketList *pktl = av_mallocz(sizeof(AVPacketList));
    int ret;

    if (!pktl)
        return AVERROR(ENOMEM);

    if (flags & FF_PACKETLIST_FLAG_REF_PACKET) {
        if ((ret = av_packet_ref(&pktl->pkt, pkt)) < 0) {
            av_free(pktl);
            return ret;
        }
    } else {
        ret = av_packet_make_refcounted(pkt);
        if (ret < 0) {
            av_free(pktl);
            return ret;
        }
        av_packet_move_ref(&pktl->pkt, pkt);
    }

    if (*packet_buffer)
        (*plast_pktl)->next = pktl;
    else
        *packet_buffer = pktl;


    *plast_pktl = pktl;
    return 0;
}
