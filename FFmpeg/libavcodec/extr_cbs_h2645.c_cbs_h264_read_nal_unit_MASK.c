#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {int /*<<< orphan*/  log_ctx; } ;
struct TYPE_34__ {int data_size; int type; TYPE_1__* content; int /*<<< orphan*/ * data; int /*<<< orphan*/  data_ref; } ;
struct TYPE_33__ {int data_size; int data_bit_start; int /*<<< orphan*/  data; int /*<<< orphan*/  data_ref; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ H264RawSlice ;
typedef  int /*<<< orphan*/  H264RawSPSExtension ;
typedef  TYPE_1__ H264RawSPS ;
typedef  int /*<<< orphan*/  H264RawSEI ;
typedef  TYPE_1__ H264RawPPS ;
typedef  int /*<<< orphan*/  H264RawNALUnitHeader ;
typedef  int /*<<< orphan*/  H264RawFiller ;
typedef  int /*<<< orphan*/  H264RawAUD ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ CodedBitstreamUnit ;
typedef  TYPE_5__ CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
#define  H264_NAL_AUD 138 
#define  H264_NAL_AUXILIARY_SLICE 137 
#define  H264_NAL_END_SEQUENCE 136 
#define  H264_NAL_END_STREAM 135 
#define  H264_NAL_FILLER_DATA 134 
#define  H264_NAL_IDR_SLICE 133 
#define  H264_NAL_PPS 132 
#define  H264_NAL_SEI 131 
#define  H264_NAL_SLICE 130 
#define  H264_NAL_SPS 129 
#define  H264_NAL_SPS_EXT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cbs_h264_free_pps ; 
 int /*<<< orphan*/  cbs_h264_free_sei ; 
 int /*<<< orphan*/  cbs_h264_free_slice ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC11 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC12 (TYPE_5__*,TYPE_4__*) ; 
 int FUNC13 (TYPE_5__*,TYPE_4__*) ; 
 int FUNC14 (TYPE_5__*,TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC17 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(CodedBitstreamContext *ctx,
                                  CodedBitstreamUnit *unit)
{
    GetBitContext gbc;
    int err;

    err = FUNC16(&gbc, unit->data, 8 * unit->data_size);
    if (err < 0)
        return err;

    switch (unit->type) {
    case H264_NAL_SPS:
        {
            H264RawSPS *sps;

            err = FUNC14(ctx, unit, sizeof(*sps), NULL);
            if (err < 0)
                return err;
            sps = unit->content;

            err = FUNC10(ctx, &gbc, sps);
            if (err < 0)
                return err;

            err = FUNC13(ctx, unit);
            if (err < 0)
                return err;
        }
        break;

    case H264_NAL_SPS_EXT:
        {
            err = FUNC14(ctx, unit,
                                            sizeof(H264RawSPSExtension),
                                            NULL);
            if (err < 0)
                return err;

            err = FUNC11(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case H264_NAL_PPS:
        {
            H264RawPPS *pps;

            err = FUNC14(ctx, unit, sizeof(*pps),
                                            &cbs_h264_free_pps);
            if (err < 0)
                return err;
            pps = unit->content;

            err = FUNC7(ctx, &gbc, pps);
            if (err < 0)
                return err;

            err = FUNC12(ctx, unit);
            if (err < 0)
                return err;
        }
        break;

    case H264_NAL_SLICE:
    case H264_NAL_IDR_SLICE:
    case H264_NAL_AUXILIARY_SLICE:
        {
            H264RawSlice *slice;
            int pos, len;

            err = FUNC14(ctx, unit, sizeof(*slice),
                                            &cbs_h264_free_slice);
            if (err < 0)
                return err;
            slice = unit->content;

            err = FUNC9(ctx, &gbc, &slice->header);
            if (err < 0)
                return err;

            pos = FUNC15(&gbc);
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

    case H264_NAL_AUD:
        {
            err = FUNC14(ctx, unit,
                                            sizeof(H264RawAUD), NULL);
            if (err < 0)
                return err;

            err = FUNC3(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case H264_NAL_SEI:
        {
            err = FUNC14(ctx, unit, sizeof(H264RawSEI),
                                            &cbs_h264_free_sei);
            if (err < 0)
                return err;

            err = FUNC8(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case H264_NAL_FILLER_DATA:
        {
            err = FUNC14(ctx, unit,
                                            sizeof(H264RawFiller), NULL);
            if (err < 0)
                return err;

            err = FUNC6(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    case H264_NAL_END_SEQUENCE:
    case H264_NAL_END_STREAM:
        {
            err = FUNC14(ctx, unit,
                                            sizeof(H264RawNALUnitHeader),
                                            NULL);
            if (err < 0)
                return err;

            err = (unit->type == H264_NAL_END_SEQUENCE ?
                   cbs_h264_read_end_of_sequence :
                   cbs_h264_read_end_of_stream)(ctx, &gbc, unit->content);
            if (err < 0)
                return err;
        }
        break;

    default:
        return FUNC0(ENOSYS);
    }

    return 0;
}