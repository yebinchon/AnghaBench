
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* filter; TYPE_1__* internal; } ;
struct TYPE_7__ {int (* flush ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int buffer_pkt; scalar_t__ eof; } ;
typedef TYPE_3__ AVBSFContext ;


 int av_packet_unref (int ) ;
 int stub1 (TYPE_3__*) ;

void av_bsf_flush(AVBSFContext *ctx)
{
    ctx->internal->eof = 0;

    av_packet_unref(ctx->internal->buffer_pkt);

    if (ctx->filter->flush)
        ctx->filter->flush(ctx);
}
