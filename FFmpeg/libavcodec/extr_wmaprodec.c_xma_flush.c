
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_streams; scalar_t__ current_stream; int offset; int * xma; } ;
typedef TYPE_1__ XMADecodeCtx ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int flush (int *) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void xma_flush(AVCodecContext *avctx)
{
    XMADecodeCtx *s = avctx->priv_data;
    int i;

    for (i = 0; i < s->num_streams; i++)
        flush(&s->xma[i]);

    memset(s->offset, 0, sizeof(s->offset));
    s->current_stream = 0;
}
