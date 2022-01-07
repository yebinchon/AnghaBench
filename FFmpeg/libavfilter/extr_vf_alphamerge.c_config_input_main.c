
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int format; TYPE_1__* dst; } ;
struct TYPE_6__ {int is_packed_rgb; int rgba_map; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ AlphaMergeContext ;
typedef TYPE_3__ AVFilterLink ;


 int AV_PIX_FMT_GBRAP ;
 scalar_t__ ff_fill_rgba_map (int ,int ) ;

__attribute__((used)) static int config_input_main(AVFilterLink *inlink)
{
    AlphaMergeContext *s = inlink->dst->priv;
    s->is_packed_rgb =
        ff_fill_rgba_map(s->rgba_map, inlink->format) >= 0 &&
        inlink->format != AV_PIX_FMT_GBRAP;
    return 0;
}
