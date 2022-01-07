
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* dst; } ;
struct TYPE_5__ {int badness_threshold; int nb_frames; int threshold_multiplier; } ;
typedef TYPE_1__ PhotosensitivityContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int GRID_SIZE ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{

    AVFilterContext *ctx = inlink->dst;
    PhotosensitivityContext *s = ctx->priv;

    s->badness_threshold = (int)(GRID_SIZE * GRID_SIZE * 4 * 256 * s->nb_frames * s->threshold_multiplier / 128);

    return 0;
}
