
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int frame_flags; int gb; } ;
struct TYPE_5__ {int is_empty; int inherit_mv; int inherit_qdelta; int qdelta_present; int num_corr; int* corr; int rvmap_sel; int checksum; int glob_quant; scalar_t__ checksum_present; int blk_vlc; int data_size; } ;
typedef TYPE_1__ IVIBandDesc ;
typedef TYPE_2__ IVI45DecContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int IVI_BLK_HUFF ;
 int align_get_bits (int *) ;
 int av_log (int *,int ,char*,int) ;
 int ff_ivi_dec_huff_desc (int *,int,int ,int *,int *) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_long (int *,int) ;
 int skip_hdr_extension (int *) ;

__attribute__((used)) static int decode_band_hdr(IVI45DecContext *ctx, IVIBandDesc *band,
                           AVCodecContext *avctx)
{
    int i, ret;
    uint8_t band_flags;

    band_flags = get_bits(&ctx->gb, 8);

    if (band_flags & 1) {
        band->is_empty = 1;
        return 0;
    }

    band->data_size = (ctx->frame_flags & 0x80) ? get_bits_long(&ctx->gb, 24) : 0;

    band->inherit_mv = band_flags & 2;
    band->inherit_qdelta = band_flags & 8;
    band->qdelta_present = band_flags & 4;
    if (!band->qdelta_present) band->inherit_qdelta = 1;


    band->num_corr = 0;
    if (band_flags & 0x10) {
        band->num_corr = get_bits(&ctx->gb, 8);
        if (band->num_corr > 61) {
            av_log(avctx, AV_LOG_ERROR, "Too many corrections: %d\n",
                   band->num_corr);
            return AVERROR_INVALIDDATA;
        }


        for (i = 0; i < band->num_corr * 2; i++)
            band->corr[i] = get_bits(&ctx->gb, 8);
    }


    band->rvmap_sel = (band_flags & 0x40) ? get_bits(&ctx->gb, 3) : 8;


    ret = ff_ivi_dec_huff_desc(&ctx->gb, band_flags & 0x80, IVI_BLK_HUFF,
                               &band->blk_vlc, avctx);
    if (ret < 0)
        return ret;

    band->checksum_present = get_bits1(&ctx->gb);
    if (band->checksum_present)
        band->checksum = get_bits(&ctx->gb, 16);

    band->glob_quant = get_bits(&ctx->gb, 5);


    if (band_flags & 0x20) {
        align_get_bits(&ctx->gb);
        skip_hdr_extension(&ctx->gb);
    }

    align_get_bits(&ctx->gb);

    return 0;
}
