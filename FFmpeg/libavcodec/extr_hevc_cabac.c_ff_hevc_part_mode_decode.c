
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* sps; } ;
struct TYPE_11__ {TYPE_4__* HEVClc; TYPE_3__ ps; } ;
struct TYPE_7__ {scalar_t__ pred_mode; } ;
struct TYPE_10__ {int cc; TYPE_1__ cu; } ;
struct TYPE_8__ {int log2_min_cb_size; int amp_enabled_flag; } ;
typedef TYPE_5__ HEVCContext ;


 scalar_t__ GET_CABAC (scalar_t__) ;
 scalar_t__ MODE_INTRA ;
 int PART_2Nx2N ;
 int PART_2NxN ;
 int PART_2NxnD ;
 int PART_2NxnU ;
 size_t PART_MODE ;
 int PART_Nx2N ;
 int PART_NxN ;
 int PART_nLx2N ;
 int PART_nRx2N ;
 scalar_t__* elem_offset ;
 scalar_t__ get_cabac_bypass (int *) ;

int ff_hevc_part_mode_decode(HEVCContext *s, int log2_cb_size)
{
    if (GET_CABAC(elem_offset[PART_MODE]))
        return PART_2Nx2N;
    if (log2_cb_size == s->ps.sps->log2_min_cb_size) {
        if (s->HEVClc->cu.pred_mode == MODE_INTRA)
            return PART_NxN;
        if (GET_CABAC(elem_offset[PART_MODE] + 1))
            return PART_2NxN;
        if (log2_cb_size == 3)
            return PART_Nx2N;
        if (GET_CABAC(elem_offset[PART_MODE] + 2))
            return PART_Nx2N;
        return PART_NxN;
    }

    if (!s->ps.sps->amp_enabled_flag) {
        if (GET_CABAC(elem_offset[PART_MODE] + 1))
            return PART_2NxN;
        return PART_Nx2N;
    }

    if (GET_CABAC(elem_offset[PART_MODE] + 1)) {
        if (GET_CABAC(elem_offset[PART_MODE] + 3))
            return PART_2NxN;
        if (get_cabac_bypass(&s->HEVClc->cc))
            return PART_2NxnD;
        return PART_2NxnU;
    }

    if (GET_CABAC(elem_offset[PART_MODE] + 3))
        return PART_Nx2N;
    if (get_cabac_bypass(&s->HEVClc->cc))
        return PART_nRx2N;
    return PART_nLx2N;
}
