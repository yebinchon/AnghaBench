
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* input_pads; TYPE_2__* priv; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_2__ LoopContext ;
typedef TYPE_3__ AVFilterContext ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_WARNING ;
 int av_log (TYPE_3__*,int ,char*,char*) ;

__attribute__((used)) static void check_size(AVFilterContext *ctx)
{
    LoopContext *s = ctx->priv;

    if (!s->size)
        av_log(ctx, AV_LOG_WARNING, "Number of %s to loop is not set!\n",
               ctx->input_pads[0].type == AVMEDIA_TYPE_VIDEO ? "frames" : "samples");
}
