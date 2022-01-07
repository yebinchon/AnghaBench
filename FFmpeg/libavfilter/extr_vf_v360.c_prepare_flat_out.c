
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float h_fov; float v_fov; void** flat_range; } ;
typedef TYPE_1__ V360Context ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ AVFilterContext ;


 float M_PI ;
 void* tanf (float) ;

__attribute__((used)) static int prepare_flat_out(AVFilterContext *ctx)
{
    V360Context *s = ctx->priv;

    s->flat_range[0] = tanf(0.5f * s->h_fov * M_PI / 180.f);
    s->flat_range[1] = tanf(0.5f * s->v_fov * M_PI / 180.f);

    return 0;
}
