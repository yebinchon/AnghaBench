
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int buffer; } ;
struct TYPE_6__ {TYPE_1__ pc; int sei; int pkt; int ps; } ;
typedef TYPE_2__ HEVCParserContext ;
typedef TYPE_3__ AVCodecParserContext ;


 int av_freep (int *) ;
 int ff_h2645_packet_uninit (int *) ;
 int ff_hevc_ps_uninit (int *) ;
 int ff_hevc_reset_sei (int *) ;

__attribute__((used)) static void hevc_parser_close(AVCodecParserContext *s)
{
    HEVCParserContext *ctx = s->priv_data;

    ff_hevc_ps_uninit(&ctx->ps);
    ff_h2645_packet_uninit(&ctx->pkt);
    ff_hevc_reset_sei(&ctx->sei);

    av_freep(&ctx->pc.buffer);
}
