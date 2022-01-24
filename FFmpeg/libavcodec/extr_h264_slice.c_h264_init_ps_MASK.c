#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_17__ ;
typedef  struct TYPE_19__   TYPE_16__ ;
typedef  struct TYPE_18__   TYPE_15__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ preferred_transfer_characteristics; scalar_t__ present; } ;
struct TYPE_22__ {TYPE_1__ alternative_transfer; } ;
struct TYPE_23__ {TYPE_4__ const* sps; TYPE_16__* sps_ref; TYPE_5__ const* pps; TYPE_17__** sps_list; TYPE_16__* pps_ref; TYPE_17__** pps_list; } ;
struct TYPE_27__ {int mb_width; int mb_height; scalar_t__ cur_bit_depth_luma; scalar_t__ cur_chroma_format_idc; scalar_t__ bit_depth_luma; scalar_t__ chroma_format_idc; int context_initialized; int mb_num; int mb_stride; int b_stride; int chroma_y_shift; int width; int height; TYPE_15__* avctx; scalar_t__ current_slice; TYPE_6__ const* slice_ctx; TYPE_2__ sei; int /*<<< orphan*/  setup_finished; TYPE_3__ ps; } ;
struct TYPE_26__ {size_t pps_id; } ;
struct TYPE_25__ {size_t sps_id; } ;
struct TYPE_24__ {int mb_width; int mb_height; scalar_t__ bit_depth_luma; scalar_t__ chroma_format_idc; scalar_t__ full_range; scalar_t__ colorspace; scalar_t__ color_trc; int /*<<< orphan*/  color_primaries; scalar_t__ colour_description_present_flag; scalar_t__ video_signal_type_present_flag; int /*<<< orphan*/  ref_frame_count; int /*<<< orphan*/  level_idc; int /*<<< orphan*/  sar; } ;
struct TYPE_20__ {scalar_t__ data; } ;
struct TYPE_19__ {scalar_t__ data; } ;
struct TYPE_18__ {int coded_width; int coded_height; int pix_fmt; scalar_t__ colorspace; scalar_t__ color_trc; int /*<<< orphan*/  color_primaries; int /*<<< orphan*/  color_range; int /*<<< orphan*/  refs; int /*<<< orphan*/  level; int /*<<< orphan*/  profile; int /*<<< orphan*/  sample_aspect_ratio; } ;
typedef  TYPE_4__ const SPS ;
typedef  TYPE_5__ PPS ;
typedef  TYPE_6__ H264SliceContext ;
typedef  TYPE_7__ H264Context ;

/* Variables and functions */
 int /*<<< orphan*/  AVCOL_RANGE_JPEG ; 
 int /*<<< orphan*/  AVCOL_RANGE_MPEG ; 
 scalar_t__ AVCOL_TRC_UNSPECIFIED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_16__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_15__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__ const*) ; 
 int FUNC10 (TYPE_7__*,int) ; 
 int FUNC11 (TYPE_7__*) ; 
 int FUNC12 (TYPE_7__*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(H264Context *h, const H264SliceContext *sl, int first_slice)
{
    const SPS *sps;
    int needs_reinit = 0, must_reinit, ret;

    if (first_slice) {
        FUNC3(&h->ps.pps_ref);
        h->ps.pps = NULL;
        h->ps.pps_ref = FUNC2(h->ps.pps_list[sl->pps_id]);
        if (!h->ps.pps_ref)
            return FUNC0(ENOMEM);
        h->ps.pps = (const PPS*)h->ps.pps_ref->data;
    }

    if (h->ps.sps != (const SPS*)h->ps.sps_list[h->ps.pps->sps_id]->data) {
        FUNC3(&h->ps.sps_ref);
        h->ps.sps = NULL;
        h->ps.sps_ref = FUNC2(h->ps.sps_list[h->ps.pps->sps_id]);
        if (!h->ps.sps_ref)
            return FUNC0(ENOMEM);
        h->ps.sps = (const SPS*)h->ps.sps_ref->data;

        if (h->mb_width  != h->ps.sps->mb_width ||
            h->mb_height != h->ps.sps->mb_height ||
            h->cur_bit_depth_luma    != h->ps.sps->bit_depth_luma ||
            h->cur_chroma_format_idc != h->ps.sps->chroma_format_idc
        )
            needs_reinit = 1;

        if (h->bit_depth_luma    != h->ps.sps->bit_depth_luma ||
            h->chroma_format_idc != h->ps.sps->chroma_format_idc)
            needs_reinit         = 1;
    }
    sps = h->ps.sps;

    must_reinit = (h->context_initialized &&
                    (   16*sps->mb_width != h->avctx->coded_width
                     || 16*sps->mb_height != h->avctx->coded_height
                     || h->cur_bit_depth_luma    != sps->bit_depth_luma
                     || h->cur_chroma_format_idc != sps->chroma_format_idc
                     || h->mb_width  != sps->mb_width
                     || h->mb_height != sps->mb_height
                    ));
    if (h->avctx->pix_fmt == AV_PIX_FMT_NONE
        || (FUNC13(h->avctx->pix_fmt) != FUNC13(FUNC10(h, 0))))
        must_reinit = 1;

    if (first_slice && FUNC4(sps->sar, h->avctx->sample_aspect_ratio))
        must_reinit = 1;

    if (!h->setup_finished) {
        h->avctx->profile = FUNC9(sps);
        h->avctx->level   = sps->level_idc;
        h->avctx->refs    = sps->ref_frame_count;

        h->mb_width  = sps->mb_width;
        h->mb_height = sps->mb_height;
        h->mb_num    = h->mb_width * h->mb_height;
        h->mb_stride = h->mb_width + 1;

        h->b_stride = h->mb_width * 4;

        h->chroma_y_shift = sps->chroma_format_idc <= 1; // 400 uses yuv420p

        h->width  = 16 * h->mb_width;
        h->height = 16 * h->mb_height;

        ret = FUNC12(h);
        if (ret < 0)
            return ret;

        if (sps->video_signal_type_present_flag) {
            h->avctx->color_range = sps->full_range > 0 ? AVCOL_RANGE_JPEG
                                                        : AVCOL_RANGE_MPEG;
            if (sps->colour_description_present_flag) {
                if (h->avctx->colorspace != sps->colorspace)
                    needs_reinit = 1;
                h->avctx->color_primaries = sps->color_primaries;
                h->avctx->color_trc       = sps->color_trc;
                h->avctx->colorspace      = sps->colorspace;
            }
        }

        if (h->sei.alternative_transfer.present &&
            FUNC5(h->sei.alternative_transfer.preferred_transfer_characteristics) &&
            h->sei.alternative_transfer.preferred_transfer_characteristics != AVCOL_TRC_UNSPECIFIED) {
            h->avctx->color_trc = h->sei.alternative_transfer.preferred_transfer_characteristics;
        }
    }

    if (!h->context_initialized || must_reinit || needs_reinit) {
        int flush_changes = h->context_initialized;
        h->context_initialized = 0;
        if (sl != h->slice_ctx) {
            FUNC7(h->avctx, AV_LOG_ERROR,
                   "changing width %d -> %d / height %d -> %d on "
                   "slice %d\n",
                   h->width, h->avctx->coded_width,
                   h->height, h->avctx->coded_height,
                   h->current_slice + 1);
            return AVERROR_INVALIDDATA;
        }

        FUNC1(first_slice);

        if (flush_changes)
            FUNC8(h);

        if ((ret = FUNC10(h, 1)) < 0)
            return ret;
        h->avctx->pix_fmt = ret;

        FUNC7(h->avctx, AV_LOG_VERBOSE, "Reinit context to %dx%d, "
               "pix_fmt: %s\n", h->width, h->height, FUNC6(h->avctx->pix_fmt));

        if ((ret = FUNC11(h)) < 0) {
            FUNC7(h->avctx, AV_LOG_ERROR,
                   "h264_slice_header_init() failed\n");
            return ret;
        }
    }

    return 0;
}