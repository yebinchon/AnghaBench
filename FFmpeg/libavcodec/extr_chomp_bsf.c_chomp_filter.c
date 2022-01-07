
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVBSFContext ;


 int ff_bsf_get_packet_ref (int *,TYPE_1__*) ;

__attribute__((used)) static int chomp_filter(AVBSFContext *ctx, AVPacket *pkt)
{
    int ret;

    ret = ff_bsf_get_packet_ref(ctx, pkt);
    if (ret < 0)
        return ret;

    while (pkt->size > 0 && !pkt->data[pkt->size - 1])
        pkt->size--;

    return 0;
}
