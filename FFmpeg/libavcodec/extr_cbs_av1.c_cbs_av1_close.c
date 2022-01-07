
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int write_buffer; int frame_header_ref; int sequence_header_ref; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ CodedBitstreamContext ;
typedef TYPE_2__ CodedBitstreamAV1Context ;


 int av_buffer_unref (int *) ;
 int av_freep (int *) ;

__attribute__((used)) static void cbs_av1_close(CodedBitstreamContext *ctx)
{
    CodedBitstreamAV1Context *priv = ctx->priv_data;

    av_buffer_unref(&priv->sequence_header_ref);
    av_buffer_unref(&priv->frame_header_ref);

    av_freep(&priv->write_buffer);
}
