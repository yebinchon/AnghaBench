
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int buffer; int ass_ctx; } ;
typedef TYPE_1__ MovTextContext ;
typedef TYPE_2__ AVCodecContext ;


 int av_bprint_finalize (int *,int *) ;
 int ff_ass_split_free (int ) ;

__attribute__((used)) static int mov_text_encode_close(AVCodecContext *avctx)
{
    MovTextContext *s = avctx->priv_data;
    ff_ass_split_free(s->ass_ctx);
    av_bprint_finalize(&s->buffer, ((void*)0));
    return 0;
}
