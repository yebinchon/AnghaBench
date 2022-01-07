
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int * ucScalingListDCCoefSizeID3; int * ucScalingListDCCoefSizeID2; int ** ucScalingLists3; int ** ucScalingLists2; int ** ucScalingLists1; int ** ucScalingLists0; } ;
struct TYPE_12__ {TYPE_2__* sps; TYPE_1__* pps; } ;
struct TYPE_14__ {TYPE_3__ ps; } ;
struct TYPE_13__ {int ** sl_dc; int *** sl; } ;
struct TYPE_11__ {TYPE_4__ scaling_list; } ;
struct TYPE_10__ {TYPE_4__ scaling_list; scalar_t__ scaling_list_data_present_flag; } ;
typedef TYPE_4__ ScalingList ;
typedef TYPE_5__ HEVCContext ;
typedef TYPE_6__ DXVA_Qmatrix_HEVC ;
typedef int AVDXVAContext ;


 int* ff_hevc_diag_scan4x4_x ;
 int* ff_hevc_diag_scan4x4_y ;
 int* ff_hevc_diag_scan8x8_x ;
 int* ff_hevc_diag_scan8x8_y ;
 int memset (TYPE_6__*,int ,int) ;

__attribute__((used)) static void fill_scaling_lists(AVDXVAContext *ctx, const HEVCContext *h, DXVA_Qmatrix_HEVC *qm)
{
    unsigned i, j, pos;
    const ScalingList *sl = h->ps.pps->scaling_list_data_present_flag ?
                            &h->ps.pps->scaling_list : &h->ps.sps->scaling_list;

    memset(qm, 0, sizeof(*qm));
    for (i = 0; i < 6; i++) {
        for (j = 0; j < 16; j++) {
            pos = 4 * ff_hevc_diag_scan4x4_y[j] + ff_hevc_diag_scan4x4_x[j];
            qm->ucScalingLists0[i][j] = sl->sl[0][i][pos];
        }

        for (j = 0; j < 64; j++) {
            pos = 8 * ff_hevc_diag_scan8x8_y[j] + ff_hevc_diag_scan8x8_x[j];
            qm->ucScalingLists1[i][j] = sl->sl[1][i][pos];
            qm->ucScalingLists2[i][j] = sl->sl[2][i][pos];

            if (i < 2)
                qm->ucScalingLists3[i][j] = sl->sl[3][i * 3][pos];
        }

        qm->ucScalingListDCCoefSizeID2[i] = sl->sl_dc[0][i];
        if (i < 2)
            qm->ucScalingListDCCoefSizeID3[i] = sl->sl_dc[1][i * 3];
    }
}
