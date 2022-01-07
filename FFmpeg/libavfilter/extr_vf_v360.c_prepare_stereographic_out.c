
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v_fov; void** flat_range; int h_fov; } ;
typedef TYPE_1__ V360Context ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ AVFilterContext ;


 float FFMIN (int ,float) ;
 float M_PI ;
 void* tanf (float) ;

__attribute__((used)) static int prepare_stereographic_out(AVFilterContext *ctx)
{
    V360Context *s = ctx->priv;

    s->flat_range[0] = tanf(FFMIN(s->h_fov, 359.f) * M_PI / 720.f);
    s->flat_range[1] = tanf(FFMIN(s->v_fov, 359.f) * M_PI / 720.f);

    return 0;
}
