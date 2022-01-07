
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TonemapContext ;
struct TYPE_7__ {double peak; int * desc; TYPE_2__* out; TYPE_2__* in; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_9__ {int * priv; } ;
struct TYPE_8__ {int height; int width; } ;
typedef int AVPixFmtDescriptor ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int tonemap (int *,TYPE_2__*,TYPE_2__*,int const*,int,int,double) ;

__attribute__((used)) static int tonemap_slice(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    TonemapContext *s = ctx->priv;
    ThreadData *td = arg;
    AVFrame *in = td->in;
    AVFrame *out = td->out;
    const AVPixFmtDescriptor *desc = td->desc;
    const int slice_start = (in->height * jobnr) / nb_jobs;
    const int slice_end = (in->height * (jobnr+1)) / nb_jobs;
    double peak = td->peak;

    for (int y = slice_start; y < slice_end; y++)
        for (int x = 0; x < out->width; x++)
            tonemap(s, out, in, desc, x, y, peak);

    return 0;
}
