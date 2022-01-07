
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int window; scalar_t__* origin; } ;
struct TYPE_8__ {TYPE_3__* priv; } ;
struct TYPE_7__ {scalar_t__* position; } ;
typedef TYPE_1__ AudioFragment ;
typedef TYPE_2__ AVFilterContext ;
typedef TYPE_3__ ATempoContext ;


 TYPE_1__* yae_prev_frag (TYPE_3__*) ;

__attribute__((used)) static int yae_update(AVFilterContext *ctx)
{
    const AudioFragment *prev;
    ATempoContext *atempo = ctx->priv;

    prev = yae_prev_frag(atempo);
    atempo->origin[0] = prev->position[0] + atempo->window / 2;
    atempo->origin[1] = prev->position[1] + atempo->window / 2;
    return 0;
}
