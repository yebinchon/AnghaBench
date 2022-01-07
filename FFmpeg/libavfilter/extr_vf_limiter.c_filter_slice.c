
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* out; TYPE_4__* in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_10__ {int const* linesize; scalar_t__* data; } ;
struct TYPE_7__ {int (* limiter ) (scalar_t__,scalar_t__,int const,int const,int ,int const,int ,int ) ;} ;
struct TYPE_9__ {int nb_planes; int* height; int planes; int max; int min; int * width; TYPE_1__ dsp; int * linesize; } ;
typedef TYPE_3__ LimiterContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterContext ;


 int av_image_copy_plane (scalar_t__,int const,scalar_t__,int const,int ,int const) ;
 int stub1 (scalar_t__,scalar_t__,int const,int const,int ,int const,int ,int ) ;

__attribute__((used)) static int filter_slice(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    LimiterContext *s = ctx->priv;
    ThreadData *td = arg;
    AVFrame *in = td->in;
    AVFrame *out = td->out;
    int p;

    for (p = 0; p < s->nb_planes; p++) {
        const int h = s->height[p];
        const int slice_start = (h * jobnr) / nb_jobs;
        const int slice_end = (h * (jobnr+1)) / nb_jobs;

        if (!((1 << p) & s->planes)) {
            if (out != in)
                av_image_copy_plane(out->data[p] + slice_start * out->linesize[p],
                                    out->linesize[p],
                                    in->data[p] + slice_start * in->linesize[p],
                                    in->linesize[p],
                                    s->linesize[p], slice_end - slice_start);
            continue;
        }

        s->dsp.limiter(in->data[p] + slice_start * in->linesize[p],
                       out->data[p] + slice_start * out->linesize[p],
                       in->linesize[p], out->linesize[p],
                       s->width[p], slice_end - slice_start,
                       s->min, s->max);
    }

    return 0;
}
