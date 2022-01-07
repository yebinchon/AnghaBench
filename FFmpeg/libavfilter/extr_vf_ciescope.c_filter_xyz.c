
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int* linesize; scalar_t__* data; } ;
struct TYPE_6__ {double* log2lin; } ;
typedef TYPE_1__ CiescopeContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;



__attribute__((used)) static void filter_xyz(AVFilterContext *ctx, AVFrame *in, double *cx, double *cy, int x, int y)
{
    CiescopeContext *s = ctx->priv;
    const uint16_t* src = (uint16_t *)(in->data[0] + in->linesize[0] * y + x * 6);
    double lx = s->log2lin[src[0]];
    double ly = s->log2lin[src[1]];
    double lz = s->log2lin[src[2]];
    double sum = lx + ly + lz;

    if (sum == 0)
        sum = 1;
    *cx = lx / sum;
    *cy = ly / sum;
}
