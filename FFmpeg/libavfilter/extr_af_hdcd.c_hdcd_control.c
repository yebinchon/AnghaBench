
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int control; } ;
typedef TYPE_1__ hdcd_state ;
struct TYPE_6__ {scalar_t__ force_pe; } ;
typedef TYPE_2__ HDCDContext ;



__attribute__((used)) static void hdcd_control(HDCDContext *ctx, hdcd_state *state, int *peak_extend, int *target_gain)
{
    *peak_extend = (ctx->force_pe || state->control & 16);
    *target_gain = (state->control & 15) << 7;
}
