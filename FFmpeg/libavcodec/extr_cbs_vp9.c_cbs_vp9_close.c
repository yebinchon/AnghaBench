
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int write_buffer; } ;
typedef TYPE_1__ CodedBitstreamVP9Context ;
typedef TYPE_2__ CodedBitstreamContext ;


 int av_freep (int *) ;

__attribute__((used)) static void cbs_vp9_close(CodedBitstreamContext *ctx)
{
    CodedBitstreamVP9Context *priv = ctx->priv_data;

    av_freep(&priv->write_buffer);
}
