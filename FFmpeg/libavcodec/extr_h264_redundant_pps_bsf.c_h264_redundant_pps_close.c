
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int output; int input; int access_unit; } ;
typedef TYPE_1__ H264RedundantPPSContext ;
typedef TYPE_2__ AVBSFContext ;


 int ff_cbs_close (int *) ;
 int ff_cbs_fragment_free (int ,int *) ;

__attribute__((used)) static void h264_redundant_pps_close(AVBSFContext *bsf)
{
    H264RedundantPPSContext *ctx = bsf->priv_data;

    ff_cbs_fragment_free(ctx->input, &ctx->access_unit);
    ff_cbs_close(&ctx->input);
    ff_cbs_close(&ctx->output);
}
