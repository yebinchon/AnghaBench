
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int finished; int y_expr_str; int y_expr; int x_expr_str; int x_expr; int zoom_expr_str; int zoom_expr; int desc; int framerate; int h; int w; } ;
typedef TYPE_1__ ZPContext ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int format; int frame_rate; int time_base; int h; int w; TYPE_3__* src; } ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int av_expr_parse (int *,int ,int ,int *,int *,int *,int *,int ,TYPE_3__*) ;
 int av_inv_q (int ) ;
 int av_pix_fmt_desc_get (int ) ;
 int var_names ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    ZPContext *s = ctx->priv;
    int ret;

    outlink->w = s->w;
    outlink->h = s->h;
    outlink->time_base = av_inv_q(s->framerate);
    outlink->frame_rate = s->framerate;
    s->desc = av_pix_fmt_desc_get(outlink->format);
    s->finished = 1;

    ret = av_expr_parse(&s->zoom_expr, s->zoom_expr_str, var_names, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ctx);
    if (ret < 0)
        return ret;

    ret = av_expr_parse(&s->x_expr, s->x_expr_str, var_names, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ctx);
    if (ret < 0)
        return ret;

    ret = av_expr_parse(&s->y_expr, s->y_expr_str, var_names, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ctx);
    if (ret < 0)
        return ret;

    return 0;
}
