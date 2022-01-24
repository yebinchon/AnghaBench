#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/  log_ctx; } ;
struct TYPE_29__ {int data_size; int type; TYPE_1__* content; int /*<<< orphan*/ * data; int /*<<< orphan*/  data_ref; } ;
struct TYPE_28__ {int data_size; int data_bit_start; int /*<<< orphan*/  data; int /*<<< orphan*/  data_ref; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ H265RawVPS ;
typedef  TYPE_1__ H265RawSlice ;
typedef  TYPE_1__ H265RawSPS ;
typedef  int /*<<< orphan*/  H265RawSEI ;
typedef  TYPE_1__ H265RawPPS ;
typedef  int /*<<< orphan*/  H265RawAUD ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_5__ CodedBitstreamUnit ;
typedef  TYPE_6__ CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
#define  HEVC_NAL_AUD 149 
#define  HEVC_NAL_BLA_N_LP 148 
#define  HEVC_NAL_BLA_W_LP 147 
#define  HEVC_NAL_BLA_W_RADL 146 
#define  HEVC_NAL_CRA_NUT 145 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cbs_h265_free_pps ; 
 int /*<<< orphan*/  cbs_h265_free_sei ; 
 int /*<<< orphan*/  cbs_h265_free_slice ; 
 int /*<<< orphan*/  cbs_h265_free_sps ; 
 int /*<<< orphan*/  cbs_h265_free_vps ; 
 int FUNC3 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC6 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC8 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (TYPE_6__*,TYPE_5__*) ; 
 int FUNC10 (TYPE_6__*,TYPE_5__*) ; 
 int FUNC11 (TYPE_6__*,TYPE_5__*) ; 
 int FUNC12 (TYPE_6__*,TYPE_5__*,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(CodedBitstreamContext *ctx,
                                  CodedBitstreamUnit *unit)
{
    GetBitContext gbc;
    int err;

    err = FUNC14(&gbc, unit->data, 8 * unit->data_size);
    if (err < 0)
        return err;

    switch (unit->type) {
    case HEVC_NAL_VPS:
        {
            H265RawVPS *vps;

            err = FUNC12(ctx, unit, sizeof(*vps),
                                            &cbs_h265_free_vps);
            if (err < 0)
                return err;
            vps = unit->content;

            err = FUNC8(ctx, &gbc, vps);
            if (err < 0)
                return err;

            err = FUNC11(ctx, unit);
            if (err < 0)
                return err;
        }
        break;
    case HEVC_NAL_SPS:
        {
            H265RawSPS *sps;

            err = FUNC12(ctx, unit, sizeof(*sps),
                                            &cbs_h265_free_sps);
            if (err < 0)
                return err;
            sps = unit->content;

            err = FUNC7(ctx, &gbc, sps);
            if (err < 0)
                return err;

            err = FUNC10(ctx, unit);
            if (err < 0)
                return err;
        }
        break;

    case HEVC_NAL_PPS:
        {
            H265RawPPS *pps;

            err = FUNC12(ctx, unit, sizeof(*pps),
                                            &cbs_h265_free_pps);
            if (err < 0)
                return err;
            pps = unit->content;

            err = FUNC4(ctx, &gbc, pps);
            if (err < 0)
                return err;

            err = FUNC9(ctx, unit);
            if (err < 0)
                return err;
        }
        break;

    case HEVC_NAL_TRAIL_N:
    case HEVC_NAL_TRAIL_R:
    case HEVC_NAL_TSA_N:
    case HEVC_NAL_TSA_R:
    case HEVC_NAL_STSA_N:
    case HEVC_NAL_STSA_R:
    case HEVC_NAL_RADL_N:
    case HEVC_NAL_RADL_R:
    case HEVC_NAL_RASL_N:
    case HEVC_NAL_RASL_R:
    case HEVC_NAL_BLA_W_LP:
    case HEVC_NAL_BLA_W_RADL:
    case HEVC_NAL_BLA_N_LP:
    case HEVC_NAL_IDR_W_RADL:
    case HEVC_NAL_IDR_N_LP:
    case HEVC_NAL_CRA_NUT:
        {
            H265RawSlice *slice;
            int pos, len;

            err = FUNC12(ctx, unit, sizeof(*slice),
                                            &cbs_h265_free_slice);
            if (err < 0)
                return err;
            slice = unit->content;

            err = FUNC6(ctx, &gbc, &slice->header);
            if (err < 0)
                return err;

            pos = FUNC13(&gbc);
            len = unit->data_size;
            if (!unit->data[len - 1]) {
                int z;
                for (z = 0; z < len && !unit->data[len - z - 1]; z++);
                FUNC2(ctx->log_ctx, AV_LOG_DEBUG, "Deleted %d trailing zeroes "
                       "from slice data.\n", z);
                len -= z;
            }

            slice->data_size = len - pos / 8;
            slice->data_ref  = FUNC1(unit->data_ref);
            if (!slice->data_ref)
                return FUNC0(ENOMEM);
            slice->data = *(unit->data + pos / 8);
            slice->data_bit_start = pos % 8;
        }
        break;

    case HEVC_NAL_AUD:
        {
            err = FUNC12(ctx, unit,
                                            sizeof(H265RawAUD), NULL);
            if (err < 0)
                return err;

            err = FUNC3(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case HEVC_NAL_SEI_PREFIX:
    case HEVC_NAL_SEI_SUFFIX:
        {
            err = FUNC12(ctx, unit, sizeof(H265RawSEI),
                                            &cbs_h265_free_sei);

            if (err < 0)
                return err;

            err = FUNC5(ctx, &gbc, unit->content,
                                    unit->type == HEVC_NAL_SEI_PREFIX);

            if (err < 0)
                return err;
        }
        break;

    default:
        return FUNC0(ENOSYS);
    }

    return 0;
}