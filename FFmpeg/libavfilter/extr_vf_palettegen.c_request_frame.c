
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv; TYPE_2__** inputs; } ;
struct TYPE_9__ {TYPE_3__* src; } ;
struct TYPE_8__ {int palette_pushed; scalar_t__ stats_mode; scalar_t__ nb_refs; } ;
typedef TYPE_1__ PaletteGenContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR_EOF ;
 scalar_t__ STATS_MODE_SINGLE_FRAMES ;
 int ff_filter_frame (TYPE_2__*,int ) ;
 int ff_request_frame (TYPE_2__*) ;
 int get_palette_frame (TYPE_3__*) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *inlink = ctx->inputs[0];
    PaletteGenContext *s = ctx->priv;
    int r;

    r = ff_request_frame(inlink);
    if (r == AVERROR_EOF && !s->palette_pushed && s->nb_refs && s->stats_mode != STATS_MODE_SINGLE_FRAMES) {
        r = ff_filter_frame(outlink, get_palette_frame(ctx));
        s->palette_pushed = 1;
        return r;
    }
    return r;
}
