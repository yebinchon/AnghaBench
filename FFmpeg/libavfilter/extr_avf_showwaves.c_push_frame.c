
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; TYPE_2__** inputs; } ;
struct TYPE_7__ {int channels; TYPE_3__* src; } ;
struct TYPE_6__ {scalar_t__* buf_idy; scalar_t__ buf_idx; int * outpicref; } ;
typedef TYPE_1__ ShowWavesContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int ff_filter_frame (TYPE_2__*,int *) ;

__attribute__((used)) inline static int push_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *inlink = ctx->inputs[0];
    ShowWavesContext *showwaves = outlink->src->priv;
    int nb_channels = inlink->channels;
    int ret, i;

    ret = ff_filter_frame(outlink, showwaves->outpicref);
    showwaves->outpicref = ((void*)0);
    showwaves->buf_idx = 0;
    for (i = 0; i < nb_channels; i++)
        showwaves->buf_idy[i] = 0;
    return ret;
}
