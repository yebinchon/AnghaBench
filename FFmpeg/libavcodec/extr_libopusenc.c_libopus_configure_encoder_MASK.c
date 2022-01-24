#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ cutoff; int /*<<< orphan*/  bit_rate; scalar_t__ global_quality; } ;
struct TYPE_6__ {int vbr; int /*<<< orphan*/  apply_phase_inv; int /*<<< orphan*/  max_bandwidth; int /*<<< orphan*/  packet_loss; int /*<<< orphan*/  complexity; } ;
typedef  int /*<<< orphan*/  OpusMSEncoder ;
typedef  TYPE_1__ LibopusEncOpts ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int OPUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx, OpusMSEncoder *enc,
                                     LibopusEncOpts *opts)
{
    int ret;

    if (avctx->global_quality) {
        FUNC8(avctx, AV_LOG_ERROR,
               "Quality-based encoding not supported, "
               "please specify a bitrate and VBR setting.\n");
        return FUNC0(EINVAL);
    }

    ret = FUNC9(enc, FUNC1(avctx->bit_rate));
    if (ret != OPUS_OK) {
        FUNC8(avctx, AV_LOG_ERROR,
               "Failed to set bitrate: %s\n", FUNC10(ret));
        return ret;
    }

    ret = FUNC9(enc,
                                       FUNC2(opts->complexity));
    if (ret != OPUS_OK)
        FUNC8(avctx, AV_LOG_WARNING,
               "Unable to set complexity: %s\n", FUNC10(ret));

    ret = FUNC9(enc, FUNC6(!!opts->vbr));
    if (ret != OPUS_OK)
        FUNC8(avctx, AV_LOG_WARNING,
               "Unable to set VBR: %s\n", FUNC10(ret));

    ret = FUNC9(enc,
                                       FUNC7(opts->vbr == 2));
    if (ret != OPUS_OK)
        FUNC8(avctx, AV_LOG_WARNING,
               "Unable to set constrained VBR: %s\n", FUNC10(ret));

    ret = FUNC9(enc,
                                       FUNC4(opts->packet_loss));
    if (ret != OPUS_OK)
        FUNC8(avctx, AV_LOG_WARNING,
               "Unable to set expected packet loss percentage: %s\n",
               FUNC10(ret));

    if (avctx->cutoff) {
        ret = FUNC9(enc,
                                           FUNC3(opts->max_bandwidth));
        if (ret != OPUS_OK)
            FUNC8(avctx, AV_LOG_WARNING,
                   "Unable to set maximum bandwidth: %s\n", FUNC10(ret));
    }

#ifdef OPUS_SET_PHASE_INVERSION_DISABLED_REQUEST
    ret = opus_multistream_encoder_ctl(enc,
                                       OPUS_SET_PHASE_INVERSION_DISABLED(!opts->apply_phase_inv));
    if (ret != OPUS_OK)
        av_log(avctx, AV_LOG_WARNING,
               "Unable to set phase inversion: %s\n",
               opus_strerror(ret));
#endif
    return OPUS_OK;
}