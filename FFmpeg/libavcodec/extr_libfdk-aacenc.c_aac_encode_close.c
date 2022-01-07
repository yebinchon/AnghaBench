
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int afq; scalar_t__ handle; } ;
struct TYPE_4__ {int extradata; TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVCodecContext ;
typedef TYPE_2__ AACContext ;


 int aacEncClose (scalar_t__*) ;
 int av_freep (int *) ;
 int ff_af_queue_close (int *) ;

__attribute__((used)) static int aac_encode_close(AVCodecContext *avctx)
{
    AACContext *s = avctx->priv_data;

    if (s->handle)
        aacEncClose(&s->handle);
    av_freep(&avctx->extradata);
    ff_af_queue_close(&s->afq);

    return 0;
}
