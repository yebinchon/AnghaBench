
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int (* control ) (int ,int ,int *) ;} ;
struct TYPE_13__ {int codec_id; int pix_fmt; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int decoder_ref; } ;
struct TYPE_11__ {int first_packet; int device_ref; int * frame_group; int ctx; TYPE_7__* mpi; } ;
typedef int RK_S64 ;
typedef int RK_S32 ;
typedef TYPE_1__ RKMPPDecoder ;
typedef TYPE_2__ RKMPPDecodeContext ;
typedef scalar_t__ MppCodingType ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_BUFFER_FLAG_READONLY ;
 int AV_HWDEVICE_TYPE_DRM ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_DRM_PRIME ;
 int ENOMEM ;
 int FRAMEGROUP_MAX_FRAMES ;
 int MPP_BUFFER_TYPE_ION ;
 int MPP_CTX_DEC ;
 int MPP_DEC_SET_EXT_BUF_GROUP ;
 int MPP_OK ;
 int MPP_POLL_BLOCK ;
 int MPP_SET_OUTPUT_BLOCK ;
 int MPP_SET_OUTPUT_BLOCK_TIMEOUT ;
 scalar_t__ MPP_VIDEO_CodingUnused ;
 int RECEIVE_FRAME_TIMEOUT ;
 int av_buffer_create (int *,int,int ,int *,int ) ;
 int av_free (TYPE_1__*) ;
 int av_hwdevice_ctx_alloc (int ) ;
 int av_hwdevice_ctx_init (int ) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 TYPE_1__* av_mallocz (int) ;
 int mpp_buffer_group_get_internal (int **,int ) ;
 int mpp_buffer_group_limit_config (int *,int ,int ) ;
 int mpp_check_support_format (int ,scalar_t__) ;
 int mpp_create (int *,TYPE_7__**) ;
 int mpp_init (int ,int ,scalar_t__) ;
 int rkmpp_close_decoder (TYPE_3__*) ;
 scalar_t__ rkmpp_get_codingtype (TYPE_3__*) ;
 int rkmpp_release_decoder ;
 int stub1 (int ,int ,int *) ;
 int stub2 (int ,int ,int *) ;
 int stub3 (int ,int ,int *) ;

__attribute__((used)) static int rkmpp_init_decoder(AVCodecContext *avctx)
{
    RKMPPDecodeContext *rk_context = avctx->priv_data;
    RKMPPDecoder *decoder = ((void*)0);
    MppCodingType codectype = MPP_VIDEO_CodingUnused;
    int ret;
    RK_S64 paramS64;
    RK_S32 paramS32;

    avctx->pix_fmt = AV_PIX_FMT_DRM_PRIME;


    decoder = av_mallocz(sizeof(RKMPPDecoder));
    if (!decoder) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    rk_context->decoder_ref = av_buffer_create((uint8_t *)decoder, sizeof(*decoder), rkmpp_release_decoder,
                                               ((void*)0), AV_BUFFER_FLAG_READONLY);
    if (!rk_context->decoder_ref) {
        av_free(decoder);
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    av_log(avctx, AV_LOG_DEBUG, "Initializing RKMPP decoder.\n");

    codectype = rkmpp_get_codingtype(avctx);
    if (codectype == MPP_VIDEO_CodingUnused) {
        av_log(avctx, AV_LOG_ERROR, "Unknown codec type (%d).\n", avctx->codec_id);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = mpp_check_support_format(MPP_CTX_DEC, codectype);
    if (ret != MPP_OK) {
        av_log(avctx, AV_LOG_ERROR, "Codec type (%d) unsupported by MPP\n", avctx->codec_id);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }


    ret = mpp_create(&decoder->ctx, &decoder->mpi);
    if (ret != MPP_OK) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create MPP context (code = %d).\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }


    ret = mpp_init(decoder->ctx, MPP_CTX_DEC, codectype);
    if (ret != MPP_OK) {
        av_log(avctx, AV_LOG_ERROR, "Failed to initialize MPP context (code = %d).\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }


    paramS32 = MPP_POLL_BLOCK;
    ret = decoder->mpi->control(decoder->ctx, MPP_SET_OUTPUT_BLOCK, &paramS32);
    if (ret != MPP_OK) {
        av_log(avctx, AV_LOG_ERROR, "Failed to set blocking mode on MPI (code = %d).\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    paramS64 = RECEIVE_FRAME_TIMEOUT;
    ret = decoder->mpi->control(decoder->ctx, MPP_SET_OUTPUT_BLOCK_TIMEOUT, &paramS64);
    if (ret != MPP_OK) {
        av_log(avctx, AV_LOG_ERROR, "Failed to set block timeout on MPI (code = %d).\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = mpp_buffer_group_get_internal(&decoder->frame_group, MPP_BUFFER_TYPE_ION);
    if (ret) {
       av_log(avctx, AV_LOG_ERROR, "Failed to retrieve buffer group (code = %d)\n", ret);
       ret = AVERROR_UNKNOWN;
       goto fail;
    }

    ret = decoder->mpi->control(decoder->ctx, MPP_DEC_SET_EXT_BUF_GROUP, decoder->frame_group);
    if (ret) {
        av_log(avctx, AV_LOG_ERROR, "Failed to assign buffer group (code = %d)\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = mpp_buffer_group_limit_config(decoder->frame_group, 0, FRAMEGROUP_MAX_FRAMES);
    if (ret) {
        av_log(avctx, AV_LOG_ERROR, "Failed to set buffer group limit (code = %d)\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    decoder->first_packet = 1;

    av_log(avctx, AV_LOG_DEBUG, "RKMPP decoder initialized successfully.\n");

    decoder->device_ref = av_hwdevice_ctx_alloc(AV_HWDEVICE_TYPE_DRM);
    if (!decoder->device_ref) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    ret = av_hwdevice_ctx_init(decoder->device_ref);
    if (ret < 0)
        goto fail;

    return 0;

fail:
    av_log(avctx, AV_LOG_ERROR, "Failed to initialize RKMPP decoder.\n");
    rkmpp_close_decoder(avctx);
    return ret;
}
