#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  enum cavs_mb { ____Placeholder_cavs_mb } cavs_mb ;
struct TYPE_15__ {scalar_t__ pict_type; int* linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {int poc; TYPE_2__* f; } ;
struct TYPE_14__ {scalar_t__ stc; int stream_revision; int* dist; int* scale_den; int sym_factor; int* direct_den; int progressive; int pic_structure; int pic_qp_fixed; int qp_fixed; int qp; int ref_flag; int skip_mode_flag; int loop_filter_disable; int alpha_offset; int beta_offset; TYPE_11__* DPB; TYPE_11__ cur; int /*<<< orphan*/  gb; scalar_t__ low_delay; int /*<<< orphan*/  avctx; int /*<<< orphan*/  edge_emu_buffer; int /*<<< orphan*/  top_qp; } ;
typedef  TYPE_1__ AVSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVSFrame ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_B ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PICTURE_TYPE_P ; 
 int B_8X8 ; 
 int B_SKIP ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_11__,TYPE_11__) ; 
 scalar_t__ PIC_PB_START_CODE ; 
 int P_8X8 ; 
 int P_SKIP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 void* FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(AVSContext *h)
{
    int ret;
    int skip_count    = -1;
    enum cavs_mb mb_type;

    if (!h->top_qp) {
        FUNC5(h->avctx, AV_LOG_ERROR, "No sequence header decoded yet\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC4(h->cur.f);

    FUNC21(&h->gb, 16);//bbv_dwlay
    if (h->stc == PIC_PB_START_CODE) {
        h->cur.f->pict_type = FUNC15(&h->gb, 2) + AV_PICTURE_TYPE_I;
        if (h->cur.f->pict_type > AV_PICTURE_TYPE_B) {
            FUNC5(h->avctx, AV_LOG_ERROR, "illegal picture type\n");
            return AVERROR_INVALIDDATA;
        }
        /* make sure we have the reference frames we need */
        if (!h->DPB[0].f->data[0] ||
           (!h->DPB[1].f->data[0] && h->cur.f->pict_type == AV_PICTURE_TYPE_B))
            return AVERROR_INVALIDDATA;
    } else {
        h->cur.f->pict_type = AV_PICTURE_TYPE_I;
        if (FUNC16(&h->gb))
            FUNC21(&h->gb, 24);//time_code
        /* old sample clips were all progressive and no low_delay,
           bump stream revision if detected otherwise */
        if (h->low_delay || !(FUNC20(&h->gb, 9) & 1))
            h->stream_revision = 1;
        /* similarly test top_field_first and repeat_first_field */
        else if (FUNC20(&h->gb, 11) & 3)
            h->stream_revision = 1;
        if (h->stream_revision > 0)
            FUNC21(&h->gb, 1); //marker_bit
    }

    ret = FUNC14(h->avctx, h->cur.f, h->cur.f->pict_type == AV_PICTURE_TYPE_B ?
                        0 : AV_GET_BUFFER_FLAG_REF);
    if (ret < 0)
        return ret;

    if (!h->edge_emu_buffer) {
        int alloc_size = FUNC2(FUNC1(h->cur.f->linesize[0]) + 32, 32);
        h->edge_emu_buffer = FUNC6(alloc_size * 2 * 24);
        if (!h->edge_emu_buffer)
            return FUNC0(ENOMEM);
    }

    if ((ret = FUNC12(h)) < 0)
        return ret;
    h->cur.poc = FUNC15(&h->gb, 8) * 2;

    /* get temporal distances and MV scaling factors */
    if (h->cur.f->pict_type != AV_PICTURE_TYPE_B) {
        h->dist[0] = (h->cur.poc - h->DPB[0].poc) & 511;
    } else {
        h->dist[0] = (h->DPB[0].poc  - h->cur.poc) & 511;
    }
    h->dist[1] = (h->cur.poc - h->DPB[1].poc) & 511;
    h->scale_den[0] = h->dist[0] ? 512/h->dist[0] : 0;
    h->scale_den[1] = h->dist[1] ? 512/h->dist[1] : 0;
    if (h->cur.f->pict_type == AV_PICTURE_TYPE_B) {
        h->sym_factor = h->dist[0] * h->scale_den[1];
        if (FUNC1(h->sym_factor) > 32768) {
            FUNC5(h->avctx, AV_LOG_ERROR, "sym_factor %d too large\n", h->sym_factor);
            return AVERROR_INVALIDDATA;
        }
    } else {
        h->direct_den[0] = h->dist[0] ? 16384 / h->dist[0] : 0;
        h->direct_den[1] = h->dist[1] ? 16384 / h->dist[1] : 0;
    }

    if (h->low_delay)
        FUNC19(&h->gb); //bbv_check_times
    h->progressive   = FUNC16(&h->gb);
    h->pic_structure = 1;
    if (!h->progressive)
        h->pic_structure = FUNC16(&h->gb);
    if (!h->pic_structure && h->stc == PIC_PB_START_CODE)
        FUNC22(&h->gb);     //advanced_pred_mode_disable
    FUNC22(&h->gb);        //top_field_first
    FUNC22(&h->gb);        //repeat_first_field
    h->pic_qp_fixed =
    h->qp_fixed = FUNC16(&h->gb);
    h->qp       = FUNC15(&h->gb, 6);
    if (h->cur.f->pict_type == AV_PICTURE_TYPE_I) {
        if (!h->progressive && !h->pic_structure)
            FUNC22(&h->gb);//what is this?
        FUNC21(&h->gb, 4);   //reserved bits
    } else {
        if (!(h->cur.f->pict_type == AV_PICTURE_TYPE_B && h->pic_structure == 1))
            h->ref_flag        = FUNC16(&h->gb);
        FUNC21(&h->gb, 4);   //reserved bits
        h->skip_mode_flag      = FUNC16(&h->gb);
    }
    h->loop_filter_disable     = FUNC16(&h->gb);
    if (!h->loop_filter_disable && FUNC16(&h->gb)) {
        h->alpha_offset        = FUNC18(&h->gb);
        h->beta_offset         = FUNC18(&h->gb);
        if (   h->alpha_offset < -64 || h->alpha_offset > 64
            || h-> beta_offset < -64 || h-> beta_offset > 64) {
            h->alpha_offset = h->beta_offset  = 0;
            return AVERROR_INVALIDDATA;
        }
    } else {
        h->alpha_offset = h->beta_offset  = 0;
    }

    ret = 0;
    if (h->cur.f->pict_type == AV_PICTURE_TYPE_I) {
        do {
            FUNC7(h);
            ret = FUNC9(h, 0);
            if (ret < 0)
                break;
        } while (FUNC13(h));
    } else if (h->cur.f->pict_type == AV_PICTURE_TYPE_P) {
        do {
            if (FUNC7(h))
                skip_count = -1;
            if (h->skip_mode_flag && (skip_count < 0)) {
                if (FUNC17(&h->gb) < 1) {
                    ret = AVERROR_INVALIDDATA;
                    break;
                }
                skip_count = FUNC19(&h->gb);
            }
            if (h->skip_mode_flag && skip_count--) {
                FUNC10(h, P_SKIP);
            } else {
                if (FUNC17(&h->gb) < 1) {
                    ret = AVERROR_INVALIDDATA;
                    break;
                }
                mb_type = FUNC19(&h->gb) + P_SKIP + h->skip_mode_flag;
                if (mb_type > P_8X8)
                    ret = FUNC9(h, mb_type - P_8X8 - 1);
                else
                    FUNC10(h, mb_type);
            }
            if (ret < 0)
                break;
        } while (FUNC13(h));
    } else { /* AV_PICTURE_TYPE_B */
        do {
            if (FUNC7(h))
                skip_count = -1;
            if (h->skip_mode_flag && (skip_count < 0)) {
                if (FUNC17(&h->gb) < 1) {
                    ret = AVERROR_INVALIDDATA;
                    break;
                }
                skip_count = FUNC19(&h->gb);
            }
            if (h->skip_mode_flag && skip_count--) {
                ret = FUNC8(h, B_SKIP);
            } else {
                if (FUNC17(&h->gb) < 1) {
                    ret = AVERROR_INVALIDDATA;
                    break;
                }
                mb_type = FUNC19(&h->gb) + B_SKIP + h->skip_mode_flag;
                if (mb_type > B_8X8)
                    ret = FUNC9(h, mb_type - B_8X8 - 1);
                else
                    ret = FUNC8(h, mb_type);
            }
            if (ret < 0)
                break;
        } while (FUNC13(h));
    }
    FUNC11();
    if (ret >= 0 && h->cur.f->pict_type != AV_PICTURE_TYPE_B) {
        FUNC4(h->DPB[1].f);
        FUNC3(AVSFrame, h->cur, h->DPB[1]);
        FUNC3(AVSFrame, h->DPB[0], h->DPB[1]);
    }
    return ret;
}