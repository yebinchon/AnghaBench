
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ LUT2Context ;
typedef TYPE_2__ AVFilterContext ;


 int ff_framesync_activate (int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    LUT2Context *s = ctx->priv;
    return ff_framesync_activate(&s->fs);
}
