
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int slice_qp_delta; } ;
struct TYPE_5__ {int current_pic_init_qp; int global_pic_init_qp; } ;
typedef TYPE_1__ H264RedundantPPSContext ;
typedef TYPE_2__ H264RawSliceHeader ;



__attribute__((used)) static int h264_redundant_pps_fixup_slice(H264RedundantPPSContext *ctx,
                                          H264RawSliceHeader *slice)
{
    int qp;

    qp = ctx->current_pic_init_qp + slice->slice_qp_delta;
    slice->slice_qp_delta = qp - ctx->global_pic_init_qp;

    return 0;
}
