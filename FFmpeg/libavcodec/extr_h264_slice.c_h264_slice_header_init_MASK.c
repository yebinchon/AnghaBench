#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_15__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_19__ {int ticks_per_frame; int bits_per_raw_sample; int active_thread_type; int /*<<< orphan*/  codec_id; TYPE_2__ framerate; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_14__ {TYPE_3__* sps; } ;
struct TYPE_18__ {unsigned int x264_build; int prev_interlaced_frame; int cur_bit_depth_luma; int pixel_shift; int bit_depth_luma; int nb_slice_ctx; int mb_stride; int context_initialized; TYPE_8__* avctx; scalar_t__* mvd_table; scalar_t__ intra4x4_pred_mode; TYPE_4__* slice_ctx; int /*<<< orphan*/  vdsp; int /*<<< orphan*/  hpc; int /*<<< orphan*/  h264qpel; int /*<<< orphan*/  h264chroma; int /*<<< orphan*/  h264dsp; int /*<<< orphan*/  chroma_format_idc; int /*<<< orphan*/  cur_chroma_format_idc; scalar_t__ first_field; int /*<<< orphan*/  chroma_y_shift; int /*<<< orphan*/  chroma_x_shift; TYPE_1__ ps; } ;
struct TYPE_17__ {scalar_t__* mvd_table; scalar_t__ intra4x4_pred_mode; TYPE_5__* h264; } ;
struct TYPE_16__ {int time_scale; int num_units_in_tick; int bit_depth_luma; int /*<<< orphan*/  chroma_format_idc; int /*<<< orphan*/  bit_depth_chroma; scalar_t__ timing_info_present_flag; int /*<<< orphan*/  sar; } ;
typedef  TYPE_3__ SPS ;
typedef  TYPE_4__ H264SliceContext ;
typedef  TYPE_5__ H264Context ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FF_THREAD_SLICE ; 
 int /*<<< orphan*/  HAVE_THREADS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC13(H264Context *h)
{
    const SPS *sps = h->ps.sps;
    int i, ret;

    FUNC10(h->avctx, sps->sar);
    FUNC1(h->avctx->pix_fmt,
                                     &h->chroma_x_shift, &h->chroma_y_shift);

    if (sps->timing_info_present_flag) {
        int64_t den = sps->time_scale;
        if (h->x264_build < 44U)
            den *= 2;
        FUNC2(&h->avctx->framerate.den, &h->avctx->framerate.num,
                  sps->num_units_in_tick * h->avctx->ticks_per_frame, den, 1 << 30);
    }

    FUNC4(h);

    h->first_field           = 0;
    h->prev_interlaced_frame = 1;

    FUNC12(h);
    ret = FUNC3(h);
    if (ret < 0) {
        FUNC0(h->avctx, AV_LOG_ERROR, "Could not allocate memory\n");
        goto fail;
    }

    if (sps->bit_depth_luma < 8 || sps->bit_depth_luma > 14 ||
        sps->bit_depth_luma == 11 || sps->bit_depth_luma == 13
    ) {
        FUNC0(h->avctx, AV_LOG_ERROR, "Unsupported bit depth %d\n",
               sps->bit_depth_luma);
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    h->cur_bit_depth_luma         =
    h->avctx->bits_per_raw_sample = sps->bit_depth_luma;
    h->cur_chroma_format_idc      = sps->chroma_format_idc;
    h->pixel_shift                = sps->bit_depth_luma > 8;
    h->chroma_format_idc          = sps->chroma_format_idc;
    h->bit_depth_luma             = sps->bit_depth_luma;

    FUNC8(&h->h264dsp, sps->bit_depth_luma,
                    sps->chroma_format_idc);
    FUNC7(&h->h264chroma, sps->bit_depth_chroma);
    FUNC9(&h->h264qpel, sps->bit_depth_luma);
    FUNC5(&h->hpc, h->avctx->codec_id, sps->bit_depth_luma,
                      sps->chroma_format_idc);
    FUNC11(&h->vdsp, sps->bit_depth_luma);

    if (!HAVE_THREADS || !(h->avctx->active_thread_type & FF_THREAD_SLICE)) {
        ret = FUNC6(h, &h->slice_ctx[0]);
        if (ret < 0) {
            FUNC0(h->avctx, AV_LOG_ERROR, "context_init() failed.\n");
            goto fail;
        }
    } else {
        for (i = 0; i < h->nb_slice_ctx; i++) {
            H264SliceContext *sl = &h->slice_ctx[i];

            sl->h264               = h;
            sl->intra4x4_pred_mode = h->intra4x4_pred_mode + i * 8 * 2 * h->mb_stride;
            sl->mvd_table[0]       = h->mvd_table[0]       + i * 8 * 2 * h->mb_stride;
            sl->mvd_table[1]       = h->mvd_table[1]       + i * 8 * 2 * h->mb_stride;

            if ((ret = FUNC6(h, sl)) < 0) {
                FUNC0(h->avctx, AV_LOG_ERROR, "context_init() failed.\n");
                goto fail;
            }
        }
    }

    h->context_initialized = 1;

    return 0;
fail:
    FUNC4(h);
    h->context_initialized = 0;
    return ret;
}