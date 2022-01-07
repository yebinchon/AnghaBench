
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ width; scalar_t__ height; void* rle_output_size; void* bg_color; void* rotate_code; void* codec; void* seq_num; } ;
struct TYPE_5__ {scalar_t__ width; scalar_t__ height; int gb; void** codebook; void** small_codebook; int avctx; } ;
typedef TYPE_1__ SANMVideoContext ;
typedef TYPE_2__ SANMFrameHeader ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int) ;
 int avpriv_report_missing_feature (int ,char*) ;
 int bytestream2_get_bytes_left (int *) ;
 void* bytestream2_get_byteu (int *) ;
 void* bytestream2_get_le16u (int *) ;
 void* bytestream2_get_le32u (int *) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static int read_frame_header(SANMVideoContext *ctx, SANMFrameHeader *hdr)
{
    int i, ret;

    if ((ret = bytestream2_get_bytes_left(&ctx->gb)) < 560) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Input frame too short (%d bytes).\n",
               ret);
        return AVERROR_INVALIDDATA;
    }
    bytestream2_skip(&ctx->gb, 8);

    hdr->width = bytestream2_get_le32u(&ctx->gb);
    hdr->height = bytestream2_get_le32u(&ctx->gb);

    if (hdr->width != ctx->width || hdr->height != ctx->height) {
        avpriv_report_missing_feature(ctx->avctx, "Variable size frames");
        return AVERROR_PATCHWELCOME;
    }

    hdr->seq_num = bytestream2_get_le16u(&ctx->gb);
    hdr->codec = bytestream2_get_byteu(&ctx->gb);
    hdr->rotate_code = bytestream2_get_byteu(&ctx->gb);

    bytestream2_skip(&ctx->gb, 4);

    for (i = 0; i < 4; i++)
        ctx->small_codebook[i] = bytestream2_get_le16u(&ctx->gb);
    hdr->bg_color = bytestream2_get_le16u(&ctx->gb);

    bytestream2_skip(&ctx->gb, 2);

    hdr->rle_output_size = bytestream2_get_le32u(&ctx->gb);
    for (i = 0; i < 256; i++)
        ctx->codebook[i] = bytestream2_get_le16u(&ctx->gb);

    bytestream2_skip(&ctx->gb, 8);

    return 0;
}
