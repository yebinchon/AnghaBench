
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int ** bScalingLists8x8; int ** bScalingLists4x4; } ;
struct TYPE_8__ {TYPE_2__* pps; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_9__ {int ** scaling_matrix8; int ** scaling_matrix4; } ;
typedef TYPE_2__ PPS ;
typedef TYPE_3__ H264Context ;
typedef TYPE_4__ DXVA_Qmatrix_H264 ;
typedef int AVDXVAContext ;
typedef int AVCodecContext ;


 int DXVA_CONTEXT_WORKAROUND (int const*,int *) ;
 int FF_DXVA2_WORKAROUND_SCALING_LIST_ZIGZAG ;
 size_t* ff_zigzag_direct ;
 size_t* ff_zigzag_scan ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void fill_scaling_lists(const AVCodecContext *avctx, AVDXVAContext *ctx, const H264Context *h, DXVA_Qmatrix_H264 *qm)
{
    const PPS *pps = h->ps.pps;
    unsigned i, j;
    memset(qm, 0, sizeof(*qm));
    if (DXVA_CONTEXT_WORKAROUND(avctx, ctx) & FF_DXVA2_WORKAROUND_SCALING_LIST_ZIGZAG) {
        for (i = 0; i < 6; i++)
            for (j = 0; j < 16; j++)
                qm->bScalingLists4x4[i][j] = pps->scaling_matrix4[i][j];

        for (i = 0; i < 64; i++) {
            qm->bScalingLists8x8[0][i] = pps->scaling_matrix8[0][i];
            qm->bScalingLists8x8[1][i] = pps->scaling_matrix8[3][i];
        }
    } else {
        for (i = 0; i < 6; i++)
            for (j = 0; j < 16; j++)
                qm->bScalingLists4x4[i][j] = pps->scaling_matrix4[i][ff_zigzag_scan[j]];

        for (i = 0; i < 64; i++) {
            qm->bScalingLists8x8[0][i] = pps->scaling_matrix8[0][ff_zigzag_direct[i]];
            qm->bScalingLists8x8[1][i] = pps->scaling_matrix8[3][ff_zigzag_direct[i]];
        }
    }
}
