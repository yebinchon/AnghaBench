
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cur_restart_header; } ;
struct TYPE_5__ {int min_channel; int max_channel; } ;
typedef TYPE_1__ RestartHeader ;
typedef TYPE_2__ MLPEncodeContext ;


 int NUM_FILTERS ;
 int set_filter_params (TYPE_2__*,int,int,int ) ;

__attribute__((used)) static void determine_filters(MLPEncodeContext *ctx)
{
    RestartHeader *rh = ctx->cur_restart_header;
    int channel, filter;

    for (channel = rh->min_channel; channel <= rh->max_channel; channel++) {
        for (filter = 0; filter < NUM_FILTERS; filter++)
            set_filter_params(ctx, channel, filter, 0);
    }
}
