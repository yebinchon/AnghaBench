
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int size; float* luminance; } ;
typedef TYPE_1__ DeflickerContext ;
typedef TYPE_2__ AVFilterContext ;



__attribute__((used)) static void get_am_factor(AVFilterContext *ctx, float *f)
{
    DeflickerContext *s = ctx->priv;
    int y;

    *f = 0.0f;

    for (y = 0; y < s->size; y++) {
        *f += s->luminance[y];
    }

    *f /= s->size;
    *f /= s->luminance[0];
}
