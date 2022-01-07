
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* in; TYPE_1__* out; } ;
typedef TYPE_3__ ThreadData ;
struct TYPE_12__ {TYPE_4__* priv; } ;
struct TYPE_11__ {int nb_planes; int* height; int * bytewidth; } ;
struct TYPE_9__ {int const* linesize; scalar_t__* data; } ;
struct TYPE_8__ {int const* linesize; scalar_t__* data; } ;
typedef TYPE_4__ NoiseContext ;
typedef TYPE_5__ AVFilterContext ;


 int noise (scalar_t__,scalar_t__,int const,int const,int ,int const,int const,TYPE_4__*,int) ;

__attribute__((used)) static int filter_slice(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    NoiseContext *s = ctx->priv;
    ThreadData *td = arg;
    int plane;

    for (plane = 0; plane < s->nb_planes; plane++) {
        const int height = s->height[plane];
        const int start = (height * jobnr ) / nb_jobs;
        const int end = (height * (jobnr+1)) / nb_jobs;
        noise(td->out->data[plane] + start * td->out->linesize[plane],
              td->in->data[plane] + start * td->in->linesize[plane],
              td->out->linesize[plane], td->in->linesize[plane],
              s->bytewidth[plane], start, end, s, plane);
    }
    return 0;
}
