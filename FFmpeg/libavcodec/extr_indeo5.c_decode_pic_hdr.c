
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prev_frame_type; int frame_type; int frame_num; int gop_invalid; int frame_flags; int checksum; int gb; int mb_vlc; int pic_hdr_size; int is_scalable; } ;
typedef TYPE_1__ IVI45DecContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int FRAMETYPE_INTER ;
 int FRAMETYPE_INTER_SCAL ;
 int FRAMETYPE_INTRA ;
 int FRAMETYPE_NULL ;
 int IVI_MB_HUFF ;
 int align_get_bits (int *) ;
 int av_log (int *,int ,char*,...) ;
 int decode_gop_header (TYPE_1__*,int *) ;
 int ff_ivi_dec_huff_desc (int *,int,int ,int *,int *) ;
 int get_bits (int *,int) ;
 int get_bits_long (int *,int) ;
 int skip_bits (int *,int) ;
 int skip_hdr_extension (int *) ;

__attribute__((used)) static int decode_pic_hdr(IVI45DecContext *ctx, AVCodecContext *avctx)
{
    int ret;

    if (get_bits(&ctx->gb, 5) != 0x1F) {
        av_log(avctx, AV_LOG_ERROR, "Invalid picture start code!\n");
        return AVERROR_INVALIDDATA;
    }

    ctx->prev_frame_type = ctx->frame_type;
    ctx->frame_type = get_bits(&ctx->gb, 3);
    if (ctx->frame_type >= 5) {
        av_log(avctx, AV_LOG_ERROR, "Invalid frame type: %d \n", ctx->frame_type);
        ctx->frame_type = FRAMETYPE_INTRA;
        return AVERROR_INVALIDDATA;
    }

    ctx->frame_num = get_bits(&ctx->gb, 8);

    if (ctx->frame_type == FRAMETYPE_INTRA) {
        if ((ret = decode_gop_header(ctx, avctx)) < 0) {
            av_log(avctx, AV_LOG_ERROR, "Invalid GOP header, skipping frames.\n");
            ctx->gop_invalid = 1;
            return ret;
        }
        ctx->gop_invalid = 0;
    }

    if (ctx->frame_type == FRAMETYPE_INTER_SCAL && !ctx->is_scalable) {
        av_log(avctx, AV_LOG_ERROR, "Scalable inter frame in non scalable stream\n");
        ctx->frame_type = FRAMETYPE_INTER;
        return AVERROR_INVALIDDATA;
    }

    if (ctx->frame_type != FRAMETYPE_NULL) {
        ctx->frame_flags = get_bits(&ctx->gb, 8);

        ctx->pic_hdr_size = (ctx->frame_flags & 1) ? get_bits_long(&ctx->gb, 24) : 0;

        ctx->checksum = (ctx->frame_flags & 0x10) ? get_bits(&ctx->gb, 16) : 0;


        if (ctx->frame_flags & 0x20)
            skip_hdr_extension(&ctx->gb);


        ret = ff_ivi_dec_huff_desc(&ctx->gb, ctx->frame_flags & 0x40,
                                   IVI_MB_HUFF, &ctx->mb_vlc, avctx);
        if (ret < 0)
            return ret;

        skip_bits(&ctx->gb, 3);
    }

    align_get_bits(&ctx->gb);

    return 0;
}
