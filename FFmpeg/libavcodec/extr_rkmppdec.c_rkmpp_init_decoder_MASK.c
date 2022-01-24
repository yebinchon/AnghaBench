#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int (* control ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  pix_fmt; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  decoder_ref; } ;
struct TYPE_11__ {int first_packet; int /*<<< orphan*/  device_ref; int /*<<< orphan*/ * frame_group; int /*<<< orphan*/  ctx; TYPE_7__* mpi; } ;
typedef  int /*<<< orphan*/  RK_S64 ;
typedef  int /*<<< orphan*/  RK_S32 ;
typedef  TYPE_1__ RKMPPDecoder ;
typedef  TYPE_2__ RKMPPDecodeContext ;
typedef  scalar_t__ MppCodingType ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_BUFFER_FLAG_READONLY ; 
 int /*<<< orphan*/  AV_HWDEVICE_TYPE_DRM ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_DRM_PRIME ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FRAMEGROUP_MAX_FRAMES ; 
 int /*<<< orphan*/  MPP_BUFFER_TYPE_ION ; 
 int /*<<< orphan*/  MPP_CTX_DEC ; 
 int /*<<< orphan*/  MPP_DEC_SET_EXT_BUF_GROUP ; 
 int MPP_OK ; 
 int /*<<< orphan*/  MPP_POLL_BLOCK ; 
 int /*<<< orphan*/  MPP_SET_OUTPUT_BLOCK ; 
 int /*<<< orphan*/  MPP_SET_OUTPUT_BLOCK_TIMEOUT ; 
 scalar_t__ MPP_VIDEO_CodingUnused ; 
 int /*<<< orphan*/  RECEIVE_FRAME_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_7__**) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  rkmpp_release_decoder ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(AVCodecContext *avctx)
{
    RKMPPDecodeContext *rk_context = avctx->priv_data;
    RKMPPDecoder *decoder = NULL;
    MppCodingType codectype = MPP_VIDEO_CodingUnused;
    int ret;
    RK_S64 paramS64;
    RK_S32 paramS32;

    avctx->pix_fmt = AV_PIX_FMT_DRM_PRIME;

    // create a decoder and a ref to it
    decoder = FUNC6(sizeof(RKMPPDecoder));
    if (!decoder) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    rk_context->decoder_ref = FUNC1((uint8_t *)decoder, sizeof(*decoder), rkmpp_release_decoder,
                                               NULL, AV_BUFFER_FLAG_READONLY);
    if (!rk_context->decoder_ref) {
        FUNC2(decoder);
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    FUNC5(avctx, AV_LOG_DEBUG, "Initializing RKMPP decoder.\n");

    codectype = FUNC13(avctx);
    if (codectype == MPP_VIDEO_CodingUnused) {
        FUNC5(avctx, AV_LOG_ERROR, "Unknown codec type (%d).\n", avctx->codec_id);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = FUNC9(MPP_CTX_DEC, codectype);
    if (ret != MPP_OK) {
        FUNC5(avctx, AV_LOG_ERROR, "Codec type (%d) unsupported by MPP\n", avctx->codec_id);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    // Create the MPP context
    ret = FUNC10(&decoder->ctx, &decoder->mpi);
    if (ret != MPP_OK) {
        FUNC5(avctx, AV_LOG_ERROR, "Failed to create MPP context (code = %d).\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    // initialize mpp
    ret = FUNC11(decoder->ctx, MPP_CTX_DEC, codectype);
    if (ret != MPP_OK) {
        FUNC5(avctx, AV_LOG_ERROR, "Failed to initialize MPP context (code = %d).\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    // make decode calls blocking with a timeout
    paramS32 = MPP_POLL_BLOCK;
    ret = decoder->mpi->control(decoder->ctx, MPP_SET_OUTPUT_BLOCK, &paramS32);
    if (ret != MPP_OK) {
        FUNC5(avctx, AV_LOG_ERROR, "Failed to set blocking mode on MPI (code = %d).\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    paramS64 = RECEIVE_FRAME_TIMEOUT;
    ret = decoder->mpi->control(decoder->ctx, MPP_SET_OUTPUT_BLOCK_TIMEOUT, &paramS64);
    if (ret != MPP_OK) {
        FUNC5(avctx, AV_LOG_ERROR, "Failed to set block timeout on MPI (code = %d).\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = FUNC7(&decoder->frame_group, MPP_BUFFER_TYPE_ION);
    if (ret) {
       FUNC5(avctx, AV_LOG_ERROR, "Failed to retrieve buffer group (code = %d)\n", ret);
       ret = AVERROR_UNKNOWN;
       goto fail;
    }

    ret = decoder->mpi->control(decoder->ctx, MPP_DEC_SET_EXT_BUF_GROUP, decoder->frame_group);
    if (ret) {
        FUNC5(avctx, AV_LOG_ERROR, "Failed to assign buffer group (code = %d)\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = FUNC8(decoder->frame_group, 0, FRAMEGROUP_MAX_FRAMES);
    if (ret) {
        FUNC5(avctx, AV_LOG_ERROR, "Failed to set buffer group limit (code = %d)\n", ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    decoder->first_packet = 1;

    FUNC5(avctx, AV_LOG_DEBUG, "RKMPP decoder initialized successfully.\n");

    decoder->device_ref = FUNC3(AV_HWDEVICE_TYPE_DRM);
    if (!decoder->device_ref) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    ret = FUNC4(decoder->device_ref);
    if (ret < 0)
        goto fail;

    return 0;

fail:
    FUNC5(avctx, AV_LOG_ERROR, "Failed to initialize RKMPP decoder.\n");
    FUNC12(avctx);
    return ret;
}