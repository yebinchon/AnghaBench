
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nb_pages; int last_pgno; int last_ass_alignment; scalar_t__ readorder; int subtitle_map; int pts; int * vbi; TYPE_5__* pages; int lines_processed; } ;
typedef TYPE_1__ TeletextContext ;
struct TYPE_8__ {int sub_rect; } ;
struct TYPE_7__ {int flags2; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int AV_CODEC_FLAG2_RO_FLUSH_NOOP ;
 int AV_NOPTS_VALUE ;
 int av_freep (TYPE_5__**) ;
 int ff_dlog (TYPE_2__*,char*,int ) ;
 int memset (int ,int ,int) ;
 int subtitle_rect_free (int *) ;
 int vbi_decoder_delete (int *) ;

__attribute__((used)) static int teletext_close_decoder(AVCodecContext *avctx)
{
    TeletextContext *ctx = avctx->priv_data;

    ff_dlog(avctx, "lines_total=%u\n", ctx->lines_processed);
    while (ctx->nb_pages)
        subtitle_rect_free(&ctx->pages[--ctx->nb_pages].sub_rect);
    av_freep(&ctx->pages);

    vbi_decoder_delete(ctx->vbi);
    ctx->vbi = ((void*)0);
    ctx->pts = AV_NOPTS_VALUE;
    ctx->last_pgno = -1;
    ctx->last_ass_alignment = 2;
    memset(ctx->subtitle_map, 0, sizeof(ctx->subtitle_map));
    if (!(avctx->flags2 & AV_CODEC_FLAG2_RO_FLUSH_NOOP))
        ctx->readorder = 0;
    return 0;
}
