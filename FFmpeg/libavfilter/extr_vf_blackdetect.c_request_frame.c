
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* src; } ;
struct TYPE_7__ {int last_picref_pts; int black_end; scalar_t__ black_started; } ;
typedef TYPE_1__ BlackDetectContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR_EOF ;
 int check_black_end (TYPE_3__*) ;
 int ff_request_frame (TYPE_2__*) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    BlackDetectContext *blackdetect = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int ret = ff_request_frame(inlink);

    if (ret == AVERROR_EOF && blackdetect->black_started) {

        blackdetect->black_end = blackdetect->last_picref_pts;
        check_black_end(ctx);
    }
    return ret;
}
