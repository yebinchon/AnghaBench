
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {scalar_t__ h; scalar_t__ w; int format; TYPE_5__* dst; } ;
struct TYPE_11__ {TYPE_1__* comp; } ;
struct TYPE_10__ {double limit; scalar_t__ y2; scalar_t__ x2; scalar_t__ y1; scalar_t__ x1; int max_pixsteps; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_2__ CropDetectContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int av_image_fill_max_pixsteps (int ,int *,TYPE_3__ const*) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    CropDetectContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);

    av_image_fill_max_pixsteps(s->max_pixsteps, ((void*)0), desc);

    if (s->limit < 1.0)
        s->limit *= (1 << desc->comp[0].depth) - 1;

    s->x1 = inlink->w - 1;
    s->y1 = inlink->h - 1;
    s->x2 = 0;
    s->y2 = 0;

    return 0;
}
