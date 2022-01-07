
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cur_restart_header; } ;
struct TYPE_6__ {int min_channel; int max_channel; } ;
typedef TYPE_1__ RestartHeader ;
typedef TYPE_2__ MLPEncodeContext ;


 int FIR ;
 int IIR ;
 scalar_t__ apply_filter (TYPE_2__*,int) ;
 int set_filter_params (TYPE_2__*,int,int ,int) ;

__attribute__((used)) static void apply_filters(MLPEncodeContext *ctx)
{
    RestartHeader *rh = ctx->cur_restart_header;
    int channel;

    for (channel = rh->min_channel; channel <= rh->max_channel; channel++) {
        if (apply_filter(ctx, channel) < 0) {


            set_filter_params(ctx, channel, FIR, 1);
            set_filter_params(ctx, channel, IIR, 1);
            apply_filter(ctx, channel);
        }
    }
}
