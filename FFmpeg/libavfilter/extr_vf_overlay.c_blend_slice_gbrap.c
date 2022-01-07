
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int src; int dst; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_2__ OverlayContext ;
typedef TYPE_3__ AVFilterContext ;


 int blend_slice_planar_rgb (TYPE_3__*,int ,int ,int ,int ,int,int ,int ,int,int,int) ;

__attribute__((used)) static int blend_slice_gbrap(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    OverlayContext *s = ctx->priv;
    ThreadData *td = arg;
    blend_slice_planar_rgb(ctx, td->dst, td->src, 0, 0, 1, s->x, s->y, 1, jobnr, nb_jobs);
    return 0;
}
