
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int h2645_pkt; int av1_pkt; } ;
typedef TYPE_1__ ExtractExtradataContext ;
typedef TYPE_2__ AVBSFContext ;


 int ff_av1_packet_uninit (int *) ;
 int ff_h2645_packet_uninit (int *) ;

__attribute__((used)) static void extract_extradata_close(AVBSFContext *ctx)
{
    ExtractExtradataContext *s = ctx->priv_data;
    ff_av1_packet_uninit(&s->av1_pkt);
    ff_h2645_packet_uninit(&s->h2645_pkt);
}
