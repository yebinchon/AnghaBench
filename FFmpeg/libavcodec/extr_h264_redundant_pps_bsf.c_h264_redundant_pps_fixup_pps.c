
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int weighted_pred_flag; scalar_t__ pic_init_qp_minus26; } ;
struct TYPE_5__ {scalar_t__ global_pic_init_qp; scalar_t__ current_pic_init_qp; } ;
typedef TYPE_1__ H264RedundantPPSContext ;
typedef TYPE_2__ H264RawPPS ;



__attribute__((used)) static int h264_redundant_pps_fixup_pps(H264RedundantPPSContext *ctx,
                                        H264RawPPS *pps)
{


    ctx->current_pic_init_qp = pps->pic_init_qp_minus26 + 26;
    pps->pic_init_qp_minus26 = ctx->global_pic_init_qp - 26;




    pps->weighted_pred_flag = 1;

    return 0;
}
