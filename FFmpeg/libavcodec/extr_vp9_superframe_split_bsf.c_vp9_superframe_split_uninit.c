
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer_pkt; } ;
typedef TYPE_1__ VP9SFSplitContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVBSFContext ;


 int av_packet_free (int *) ;

__attribute__((used)) static void vp9_superframe_split_uninit(AVBSFContext *ctx)
{
    VP9SFSplitContext *s = ctx->priv_data;
    av_packet_free(&s->buffer_pkt);
}
