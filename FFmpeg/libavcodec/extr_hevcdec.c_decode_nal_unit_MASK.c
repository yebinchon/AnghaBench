#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_20__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
struct TYPE_40__ {int err_recognition; TYPE_3__* hwaccel; int /*<<< orphan*/  skip_frame; } ;
struct TYPE_39__ {int type; int /*<<< orphan*/  raw_size; int /*<<< orphan*/  raw_data; int /*<<< orphan*/  temporal_id; int /*<<< orphan*/  gb; } ;
struct TYPE_34__ {TYPE_2__* sps; } ;
struct TYPE_33__ {int /*<<< orphan*/  num_entry_point_offsets; int /*<<< orphan*/  first_slice_in_pic_flag; int /*<<< orphan*/  slice_type; int /*<<< orphan*/  dependent_slice_segment_flag; } ;
struct TYPE_38__ {int nal_unit_type; int is_decoded; int const first_nal_type; int threads_number; int seq_decode; TYPE_7__* avctx; void* max_ra; TYPE_20__ ps; TYPE_1__ sh; int /*<<< orphan*/  ref; int /*<<< orphan*/  overlap; void* poc; int /*<<< orphan*/  sei; int /*<<< orphan*/  apply_defdispwin; int /*<<< orphan*/  temporal_id; TYPE_4__* HEVClc; } ;
struct TYPE_37__ {int /*<<< orphan*/  gb; } ;
struct TYPE_36__ {int (* decode_params ) (TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* start_frame ) (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int (* decode_slice ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_35__ {int ctb_width; int ctb_height; } ;
typedef  TYPE_4__ HEVCLocalContext ;
typedef  TYPE_5__ HEVCContext ;
typedef  TYPE_6__ H2645NAL ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVDISCARD_BIDIR ; 
 int /*<<< orphan*/  AVDISCARD_NONINTRA ; 
 int /*<<< orphan*/  AVDISCARD_NONKEY ; 
 int AVERROR_INVALIDDATA ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  HEVC_NAL_AUD 152 
#define  HEVC_NAL_BLA_N_LP 151 
#define  HEVC_NAL_BLA_W_LP 150 
#define  HEVC_NAL_BLA_W_RADL 149 
#define  HEVC_NAL_CRA_NUT 148 
#define  HEVC_NAL_EOB_NUT 147 
#define  HEVC_NAL_EOS_NUT 146 
#define  HEVC_NAL_FD_NUT 145 
#define  HEVC_NAL_IDR_N_LP 144 
#define  HEVC_NAL_IDR_W_RADL 143 
#define  HEVC_NAL_PPS 142 
#define  HEVC_NAL_RADL_N 141 
#define  HEVC_NAL_RADL_R 140 
#define  HEVC_NAL_RASL_N 139 
#define  HEVC_NAL_RASL_R 138 
#define  HEVC_NAL_SEI_PREFIX 137 
#define  HEVC_NAL_SEI_SUFFIX 136 
#define  HEVC_NAL_SPS 135 
#define  HEVC_NAL_STSA_N 134 
#define  HEVC_NAL_STSA_R 133 
#define  HEVC_NAL_TRAIL_N 132 
#define  HEVC_NAL_TRAIL_R 131 
#define  HEVC_NAL_TSA_N 130 
#define  HEVC_NAL_TSA_R 129 
#define  HEVC_NAL_VPS 128 
 int /*<<< orphan*/  HEVC_SLICE_B ; 
 int /*<<< orphan*/  HEVC_SLICE_I ; 
 void* INT_MAX ; 
 void* INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_20__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *,TYPE_20__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_20__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_20__*) ; 
 int FUNC8 (TYPE_5__*) ; 
 int FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_5__*) ; 
 int FUNC11 (TYPE_5__*,TYPE_6__ const*) ; 
 int FUNC12 (TYPE_5__*) ; 
 int FUNC13 (TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(HEVCContext *s, const H2645NAL *nal)
{
    HEVCLocalContext *lc = s->HEVClc;
    GetBitContext *gb    = &lc->gb;
    int ctb_addr_ts, ret;

    *gb              = nal->gb;
    s->nal_unit_type = nal->type;
    s->temporal_id   = nal->temporal_id;

    switch (s->nal_unit_type) {
    case HEVC_NAL_VPS:
        if (s->avctx->hwaccel && s->avctx->hwaccel->decode_params) {
            ret = s->avctx->hwaccel->decode_params(s->avctx,
                                                   nal->type,
                                                   nal->raw_data,
                                                   nal->raw_size);
            if (ret < 0)
                goto fail;
        }
        ret = FUNC7(gb, s->avctx, &s->ps);
        if (ret < 0)
            goto fail;
        break;
    case HEVC_NAL_SPS:
        if (s->avctx->hwaccel && s->avctx->hwaccel->decode_params) {
            ret = s->avctx->hwaccel->decode_params(s->avctx,
                                                   nal->type,
                                                   nal->raw_data,
                                                   nal->raw_size);
            if (ret < 0)
                goto fail;
        }
        ret = FUNC6(gb, s->avctx, &s->ps,
                                     s->apply_defdispwin);
        if (ret < 0)
            goto fail;
        break;
    case HEVC_NAL_PPS:
        if (s->avctx->hwaccel && s->avctx->hwaccel->decode_params) {
            ret = s->avctx->hwaccel->decode_params(s->avctx,
                                                   nal->type,
                                                   nal->raw_data,
                                                   nal->raw_size);
            if (ret < 0)
                goto fail;
        }
        ret = FUNC4(gb, s->avctx, &s->ps);
        if (ret < 0)
            goto fail;
        break;
    case HEVC_NAL_SEI_PREFIX:
    case HEVC_NAL_SEI_SUFFIX:
        if (s->avctx->hwaccel && s->avctx->hwaccel->decode_params) {
            ret = s->avctx->hwaccel->decode_params(s->avctx,
                                                   nal->type,
                                                   nal->raw_data,
                                                   nal->raw_size);
            if (ret < 0)
                goto fail;
        }
        ret = FUNC5(gb, s->avctx, &s->sei, &s->ps, s->nal_unit_type);
        if (ret < 0)
            goto fail;
        break;
    case HEVC_NAL_TRAIL_R:
    case HEVC_NAL_TRAIL_N:
    case HEVC_NAL_TSA_N:
    case HEVC_NAL_TSA_R:
    case HEVC_NAL_STSA_N:
    case HEVC_NAL_STSA_R:
    case HEVC_NAL_BLA_W_LP:
    case HEVC_NAL_BLA_W_RADL:
    case HEVC_NAL_BLA_N_LP:
    case HEVC_NAL_IDR_W_RADL:
    case HEVC_NAL_IDR_N_LP:
    case HEVC_NAL_CRA_NUT:
    case HEVC_NAL_RADL_N:
    case HEVC_NAL_RADL_R:
    case HEVC_NAL_RASL_N:
    case HEVC_NAL_RASL_R:
        ret = FUNC12(s);
        if (ret < 0)
            return ret;
        if (ret == 1) {
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }


        if (
            (s->avctx->skip_frame >= AVDISCARD_BIDIR && s->sh.slice_type == HEVC_SLICE_B) ||
            (s->avctx->skip_frame >= AVDISCARD_NONINTRA && s->sh.slice_type != HEVC_SLICE_I) ||
            (s->avctx->skip_frame >= AVDISCARD_NONKEY && !FUNC2(s))) {
            break;
        }

        if (s->sh.first_slice_in_pic_flag) {
            if (s->max_ra == INT_MAX) {
                if (s->nal_unit_type == HEVC_NAL_CRA_NUT || FUNC0(s)) {
                    s->max_ra = s->poc;
                } else {
                    if (FUNC1(s))
                        s->max_ra = INT_MIN;
                }
            }

            if ((s->nal_unit_type == HEVC_NAL_RASL_R || s->nal_unit_type == HEVC_NAL_RASL_N) &&
                s->poc <= s->max_ra) {
                s->is_decoded = 0;
                break;
            } else {
                if (s->nal_unit_type == HEVC_NAL_RASL_R && s->poc > s->max_ra)
                    s->max_ra = INT_MIN;
            }

            s->overlap ++;
            ret = FUNC9(s);
            if (ret < 0)
                return ret;
        } else if (!s->ref) {
            FUNC3(s->avctx, AV_LOG_ERROR, "First slice in a frame missing.\n");
            goto fail;
        }

        if (s->nal_unit_type != s->first_nal_type) {
            FUNC3(s->avctx, AV_LOG_ERROR,
                   "Non-matching NAL types of the VCL NALUs: %d %d\n",
                   s->first_nal_type, s->nal_unit_type);
            return AVERROR_INVALIDDATA;
        }

        if (!s->sh.dependent_slice_segment_flag &&
            s->sh.slice_type != HEVC_SLICE_I) {
            ret = FUNC8(s);
            if (ret < 0) {
                FUNC3(s->avctx, AV_LOG_WARNING,
                       "Error constructing the reference lists for the current slice.\n");
                goto fail;
            }
        }

        if (s->sh.first_slice_in_pic_flag && s->avctx->hwaccel) {
            ret = s->avctx->hwaccel->start_frame(s->avctx, NULL, 0);
            if (ret < 0)
                goto fail;
        }

        if (s->avctx->hwaccel) {
            ret = s->avctx->hwaccel->decode_slice(s->avctx, nal->raw_data, nal->raw_size);
            if (ret < 0)
                goto fail;
        } else {
            if (s->threads_number > 1 && s->sh.num_entry_point_offsets > 0)
                ctb_addr_ts = FUNC11(s, nal);
            else
                ctb_addr_ts = FUNC10(s);
            if (ctb_addr_ts >= (s->ps.sps->ctb_width * s->ps.sps->ctb_height)) {
                s->is_decoded = 1;
            }

            if (ctb_addr_ts < 0) {
                ret = ctb_addr_ts;
                goto fail;
            }
        }
        break;
    case HEVC_NAL_EOS_NUT:
    case HEVC_NAL_EOB_NUT:
        s->seq_decode = (s->seq_decode + 1) & 0xff;
        s->max_ra     = INT_MAX;
        break;
    case HEVC_NAL_AUD:
    case HEVC_NAL_FD_NUT:
        break;
    default:
        FUNC3(s->avctx, AV_LOG_INFO,
               "Skipping NAL unit %d\n", s->nal_unit_type);
    }

    return 0;
fail:
    if (s->avctx->err_recognition & AV_EF_EXPLODE)
        return ret;
    return 0;
}