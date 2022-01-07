
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; } ;
typedef TYPE_1__ AVFrame ;
typedef int AVFilterContext ;


 int fir_channel (int *,TYPE_1__*,int) ;

__attribute__((used)) static int fir_channels(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    AVFrame *out = arg;
    const int start = (out->channels * jobnr) / nb_jobs;
    const int end = (out->channels * (jobnr+1)) / nb_jobs;

    for (int ch = start; ch < end; ch++) {
        fir_channel(ctx, out, ch);
    }

    return 0;
}
