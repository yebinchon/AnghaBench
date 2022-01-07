
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ slice_temporal_mvp_enabled_flag; } ;
struct TYPE_19__ {TYPE_3__* sps; } ;
struct TYPE_24__ {TYPE_5__ sh; TYPE_4__ ps; TYPE_1__* ref; TYPE_8__* HEVClc; } ;
struct TYPE_17__ {int cand_bottom_left; int cand_left; int cand_up_left; int cand_up; int cand_up_right_sap; } ;
struct TYPE_23__ {TYPE_2__ na; } ;
struct TYPE_22__ {scalar_t__ x; scalar_t__ y; int member_0; } ;
struct TYPE_21__ {int* ref_idx; TYPE_7__* mv; } ;
struct TYPE_18__ {int min_pu_width; int height; int width; } ;
struct TYPE_16__ {TYPE_6__* tab_mvf; } ;
typedef TYPE_6__ MvField ;
typedef TYPE_7__ Mv ;
typedef TYPE_8__ HEVCLocalContext ;
typedef TYPE_9__ HEVCContext ;


 int A0 ;
 int A1 ;
 int AVAILABLE (int const,int ) ;
 int B0 ;
 int B1 ;
 int B2 ;
 scalar_t__ MP_MX (int ,int,TYPE_7__) ;
 int MP_MX_LT (int ,int,TYPE_7__) ;
 scalar_t__ PRED_BLOCK_AVAILABLE (int ) ;
 int temporal_luma_motion_vector (TYPE_9__*,int,int,int,int,int,TYPE_7__*,int) ;

void ff_hevc_luma_mv_mvp_mode(HEVCContext *s, int x0, int y0, int nPbW,
                              int nPbH, int log2_cb_size, int part_idx,
                              int merge_idx, MvField *mv,
                              int mvp_lx_flag, int LX)
{
    HEVCLocalContext *lc = s->HEVClc;
    MvField *tab_mvf = s->ref->tab_mvf;
    int isScaledFlag_L0 = 0;
    int availableFlagLXA0 = 1;
    int availableFlagLXB0 = 1;
    int numMVPCandLX = 0;
    int min_pu_width = s->ps.sps->min_pu_width;

    int xA0, yA0;
    int is_available_a0;
    int xA1, yA1;
    int is_available_a1;
    int xB0, yB0;
    int is_available_b0;
    int xB1, yB1;
    int is_available_b1;
    int xB2, yB2;
    int is_available_b2;

    Mv mvpcand_list[2] = { { 0 } };
    Mv mxA;
    Mv mxB;
    int ref_idx_curr;
    int ref_idx = 0;
    int pred_flag_index_l0;
    int pred_flag_index_l1;

    const int cand_bottom_left = lc->na.cand_bottom_left;
    const int cand_left = lc->na.cand_left;
    const int cand_up_left = lc->na.cand_up_left;
    const int cand_up = lc->na.cand_up;
    const int cand_up_right = lc->na.cand_up_right_sap;
    ref_idx_curr = LX;
    ref_idx = mv->ref_idx[LX];
    pred_flag_index_l0 = LX;
    pred_flag_index_l1 = !LX;


    xA0 = x0 - 1;
    yA0 = y0 + nPbH;

    is_available_a0 = AVAILABLE(cand_bottom_left, A0) &&
                      yA0 < s->ps.sps->height &&
                      PRED_BLOCK_AVAILABLE(A0);


    xA1 = x0 - 1;
    yA1 = y0 + nPbH - 1;

    is_available_a1 = AVAILABLE(cand_left, A1);
    if (is_available_a0 || is_available_a1)
        isScaledFlag_L0 = 1;

    if (is_available_a0) {
        if (MP_MX(A0, pred_flag_index_l0, mxA)) {
            goto b_candidates;
        }
        if (MP_MX(A0, pred_flag_index_l1, mxA)) {
            goto b_candidates;
        }
    }

    if (is_available_a1) {
        if (MP_MX(A1, pred_flag_index_l0, mxA)) {
            goto b_candidates;
        }
        if (MP_MX(A1, pred_flag_index_l1, mxA)) {
            goto b_candidates;
        }
    }

    if (is_available_a0) {
        if (MP_MX_LT(A0, pred_flag_index_l0, mxA)) {
            goto b_candidates;
        }
        if (MP_MX_LT(A0, pred_flag_index_l1, mxA)) {
            goto b_candidates;
        }
    }

    if (is_available_a1) {
        if (MP_MX_LT(A1, pred_flag_index_l0, mxA)) {
            goto b_candidates;
        }
        if (MP_MX_LT(A1, pred_flag_index_l1, mxA)) {
            goto b_candidates;
        }
    }
    availableFlagLXA0 = 0;

b_candidates:


    xB0 = x0 + nPbW;
    yB0 = y0 - 1;

    is_available_b0 = AVAILABLE(cand_up_right, B0) &&
                       xB0 < s->ps.sps->width &&
                       PRED_BLOCK_AVAILABLE(B0);


    xB1 = x0 + nPbW - 1;
    yB1 = y0 - 1;
    is_available_b1 = AVAILABLE(cand_up, B1);


    xB2 = x0 - 1;
    yB2 = y0 - 1;
    is_available_b2 = AVAILABLE(cand_up_left, B2);


    if (is_available_b0) {
        if (MP_MX(B0, pred_flag_index_l0, mxB)) {
            goto scalef;
        }
        if (MP_MX(B0, pred_flag_index_l1, mxB)) {
            goto scalef;
        }
    }


    if (is_available_b1) {
        if (MP_MX(B1, pred_flag_index_l0, mxB)) {
            goto scalef;
        }
        if (MP_MX(B1, pred_flag_index_l1, mxB)) {
            goto scalef;
        }
    }


    if (is_available_b2) {
        if (MP_MX(B2, pred_flag_index_l0, mxB)) {
            goto scalef;
        }
        if (MP_MX(B2, pred_flag_index_l1, mxB)) {
            goto scalef;
        }
    }
    availableFlagLXB0 = 0;

scalef:
    if (!isScaledFlag_L0) {
        if (availableFlagLXB0) {
            availableFlagLXA0 = 1;
            mxA = mxB;
        }
        availableFlagLXB0 = 0;


        if (is_available_b0) {
            availableFlagLXB0 = MP_MX_LT(B0, pred_flag_index_l0, mxB);
            if (!availableFlagLXB0)
                availableFlagLXB0 = MP_MX_LT(B0, pred_flag_index_l1, mxB);
        }

        if (is_available_b1 && !availableFlagLXB0) {
            availableFlagLXB0 = MP_MX_LT(B1, pred_flag_index_l0, mxB);
            if (!availableFlagLXB0)
                availableFlagLXB0 = MP_MX_LT(B1, pred_flag_index_l1, mxB);
        }

        if (is_available_b2 && !availableFlagLXB0) {
            availableFlagLXB0 = MP_MX_LT(B2, pred_flag_index_l0, mxB);
            if (!availableFlagLXB0)
                availableFlagLXB0 = MP_MX_LT(B2, pred_flag_index_l1, mxB);
        }
    }

    if (availableFlagLXA0)
        mvpcand_list[numMVPCandLX++] = mxA;

    if (availableFlagLXB0 && (!availableFlagLXA0 || mxA.x != mxB.x || mxA.y != mxB.y))
        mvpcand_list[numMVPCandLX++] = mxB;


    if (numMVPCandLX < 2 && s->sh.slice_temporal_mvp_enabled_flag &&
        mvp_lx_flag == numMVPCandLX) {
        Mv mv_col;
        int available_col = temporal_luma_motion_vector(s, x0, y0, nPbW,
                                                        nPbH, ref_idx,
                                                        &mv_col, LX);
        if (available_col)
            mvpcand_list[numMVPCandLX++] = mv_col;
    }

    mv->mv[LX] = mvpcand_list[mvp_lx_flag];
}
