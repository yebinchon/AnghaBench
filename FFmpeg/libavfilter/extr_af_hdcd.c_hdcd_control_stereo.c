
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hdcd_control_result ;
struct TYPE_4__ {int val_target_gain; int sample_count; int fctx; int * state; } ;
typedef TYPE_1__ HDCDContext ;


 int AV_LOG_VERBOSE ;
 int GAINTOFLOAT (int) ;
 int HDCD_OK ;
 int HDCD_TG_MISMATCH ;
 int av_log (int ,int ,char*,int ,int ,int ,int ) ;
 int hdcd_control (TYPE_1__*,int *,int*,int*) ;

__attribute__((used)) static hdcd_control_result hdcd_control_stereo(HDCDContext *ctx, int *peak_extend0, int *peak_extend1)
{
    int target_gain[2];
    hdcd_control(ctx, &ctx->state[0], peak_extend0, &target_gain[0]);
    hdcd_control(ctx, &ctx->state[1], peak_extend1, &target_gain[1]);
    if (target_gain[0] == target_gain[1])
        ctx->val_target_gain = target_gain[0];
    else {
        av_log(ctx->fctx, AV_LOG_VERBOSE,
           "hdcd error: Unmatched target_gain near %d: tg0: %0.1f, tg1: %0.1f, lvg: %0.1f\n",
           ctx->sample_count,
           GAINTOFLOAT(target_gain[0] >>7),
           GAINTOFLOAT(target_gain[1] >>7),
           GAINTOFLOAT(ctx->val_target_gain >>7) );
           return HDCD_TG_MISMATCH;
    }
    return HDCD_OK;
}
