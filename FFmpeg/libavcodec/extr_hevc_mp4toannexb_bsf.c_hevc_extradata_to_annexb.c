
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_2__* par_out; TYPE_1__* par_in; } ;
struct TYPE_7__ {size_t extradata_size; int * extradata; } ;
struct TYPE_6__ {int extradata_size; int extradata; } ;
typedef int GetByteContext ;
typedef TYPE_3__ AVBSFContext ;


 int AVERROR_INVALIDDATA ;
 size_t AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_WB32 (int *,int) ;
 int HEVC_NAL_PPS ;
 int HEVC_NAL_SEI_PREFIX ;
 int HEVC_NAL_SEI_SUFFIX ;
 int HEVC_NAL_SPS ;
 int HEVC_NAL_VPS ;
 size_t SIZE_MAX ;
 int av_freep (int **) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int av_reallocp (int **,size_t) ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_buffer (int *,int *,int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_init (int *,int ,int ) ;
 int bytestream2_skip (int *,int) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static int hevc_extradata_to_annexb(AVBSFContext *ctx)
{
    GetByteContext gb;
    int length_size, num_arrays, i, j;
    int ret = 0;

    uint8_t *new_extradata = ((void*)0);
    size_t new_extradata_size = 0;

    bytestream2_init(&gb, ctx->par_in->extradata, ctx->par_in->extradata_size);

    bytestream2_skip(&gb, 21);
    length_size = (bytestream2_get_byte(&gb) & 3) + 1;
    num_arrays = bytestream2_get_byte(&gb);

    for (i = 0; i < num_arrays; i++) {
        int type = bytestream2_get_byte(&gb) & 0x3f;
        int cnt = bytestream2_get_be16(&gb);

        if (!(type == HEVC_NAL_VPS || type == HEVC_NAL_SPS || type == HEVC_NAL_PPS ||
              type == HEVC_NAL_SEI_PREFIX || type == HEVC_NAL_SEI_SUFFIX)) {
            av_log(ctx, AV_LOG_ERROR, "Invalid NAL unit type in extradata: %d\n",
                   type);
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }

        for (j = 0; j < cnt; j++) {
            int nalu_len = bytestream2_get_be16(&gb);

            if (4 + AV_INPUT_BUFFER_PADDING_SIZE + nalu_len > SIZE_MAX - new_extradata_size) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            ret = av_reallocp(&new_extradata, new_extradata_size + nalu_len + 4 + AV_INPUT_BUFFER_PADDING_SIZE);
            if (ret < 0)
                goto fail;

            AV_WB32(new_extradata + new_extradata_size, 1);
            bytestream2_get_buffer(&gb, new_extradata + new_extradata_size + 4, nalu_len);
            new_extradata_size += 4 + nalu_len;
            memset(new_extradata + new_extradata_size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
        }
    }

    av_freep(&ctx->par_out->extradata);
    ctx->par_out->extradata = new_extradata;
    ctx->par_out->extradata_size = new_extradata_size;

    if (!new_extradata_size)
        av_log(ctx, AV_LOG_WARNING, "No parameter sets in the extradata\n");

    return length_size;
fail:
    av_freep(&new_extradata);
    return ret;
}
