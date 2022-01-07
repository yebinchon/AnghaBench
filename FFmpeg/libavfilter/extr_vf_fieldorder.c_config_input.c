
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int w; int format; TYPE_3__* dst; } ;
struct TYPE_5__ {int line_size; } ;
typedef TYPE_1__ FieldOrderContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int av_image_fill_linesizes (int ,int ,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    FieldOrderContext *s = ctx->priv;

    return av_image_fill_linesizes(s->line_size, inlink->format, inlink->w);
}
