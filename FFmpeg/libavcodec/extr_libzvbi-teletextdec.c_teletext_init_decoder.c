
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int format_id; int last_pgno; int last_ass_alignment; int opacity; int pgno; scalar_t__ transparent_bg; int pts; int * vbi; } ;
typedef TYPE_1__ TeletextContext ;
struct TYPE_8__ {int width; int height; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_BUG ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_NOPTS_VALUE ;
 int BITMAP_CHAR_HEIGHT ;
 int BITMAP_CHAR_WIDTH ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int ff_ass_subtitle_header_default (TYPE_2__*) ;
 int my_ass_subtitle_header (TYPE_2__*) ;
 int vbi_version (unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int teletext_init_decoder(AVCodecContext *avctx)
{
    TeletextContext *ctx = avctx->priv_data;
    unsigned int maj, min, rev;

    vbi_version(&maj, &min, &rev);
    if (!(maj > 0 || min > 2 || min == 2 && rev >= 26)) {
        av_log(avctx, AV_LOG_ERROR, "decoder needs zvbi version >= 0.2.26.\n");
        return AVERROR_EXTERNAL;
    }

    if (ctx->format_id == 0) {
        avctx->width = 41 * BITMAP_CHAR_WIDTH;
        avctx->height = 25 * BITMAP_CHAR_HEIGHT;
    }

    ctx->vbi = ((void*)0);
    ctx->pts = AV_NOPTS_VALUE;
    ctx->last_pgno = -1;
    ctx->last_ass_alignment = 2;

    if (ctx->opacity == -1)
        ctx->opacity = ctx->transparent_bg ? 0 : 255;

    av_log(avctx, AV_LOG_VERBOSE, "page filter: %s\n", ctx->pgno);

    switch (ctx->format_id) {
        case 0:
            return 0;
        case 1:
            return ff_ass_subtitle_header_default(avctx);
        case 2:
            return my_ass_subtitle_header(avctx);
    }
    return AVERROR_BUG;
}
