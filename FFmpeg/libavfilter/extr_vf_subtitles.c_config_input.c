
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {double h; scalar_t__ w; int format; TYPE_1__* dst; } ;
struct TYPE_6__ {double original_h; int shaping; int renderer; scalar_t__ original_w; scalar_t__ alpha; int draw; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ AssContext ;
typedef TYPE_3__ AVFilterLink ;


 int FF_DRAW_PROCESS_ALPHA ;
 int ass_set_aspect_ratio (int ,double,double) ;
 int ass_set_frame_size (int ,scalar_t__,double) ;
 int ass_set_shaper (int ,int) ;
 int ff_draw_init (int *,int ,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AssContext *ass = inlink->dst->priv;

    ff_draw_init(&ass->draw, inlink->format, ass->alpha ? FF_DRAW_PROCESS_ALPHA : 0);

    ass_set_frame_size (ass->renderer, inlink->w, inlink->h);
    if (ass->original_w && ass->original_h)
        ass_set_aspect_ratio(ass->renderer, (double)inlink->w / inlink->h,
                             (double)ass->original_w / ass->original_h);
    if (ass->shaping != -1)
        ass_set_shaper(ass->renderer, ass->shaping);

    return 0;
}
