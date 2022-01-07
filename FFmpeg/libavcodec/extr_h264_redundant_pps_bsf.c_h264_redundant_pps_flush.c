
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int extradata_pic_init_qp; int current_pic_init_qp; } ;
typedef TYPE_1__ H264RedundantPPSContext ;
typedef TYPE_2__ AVBSFContext ;



__attribute__((used)) static void h264_redundant_pps_flush(AVBSFContext *bsf)
{
    H264RedundantPPSContext *ctx = bsf->priv_data;
    ctx->current_pic_init_qp = ctx->extradata_pic_init_qp;
}
