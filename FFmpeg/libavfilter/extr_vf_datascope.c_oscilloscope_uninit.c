
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int values; } ;
typedef TYPE_1__ OscilloscopeContext ;
typedef TYPE_2__ AVFilterContext ;


 int av_freep (int *) ;

__attribute__((used)) static void oscilloscope_uninit(AVFilterContext *ctx)
{
    OscilloscopeContext *s = ctx->priv;

    av_freep(&s->values);
}
