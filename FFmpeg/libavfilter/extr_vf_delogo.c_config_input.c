
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_7__ {int x; int band; int w; int y; int h; } ;
struct TYPE_6__ {TYPE_2__* priv; } ;
typedef TYPE_2__ DelogoContext ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_2__*,int ,char*) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    DelogoContext *s = inlink->dst->priv;


    if (s->x + (s->band - 1) < 0 || s->x + s->w - (s->band*2 - 2) > inlink->w ||
        s->y + (s->band - 1) < 0 || s->y + s->h - (s->band*2 - 2) > inlink->h) {
        av_log(s, AV_LOG_ERROR, "Logo area is outside of the frame.\n");
        return AVERROR(EINVAL);
    }

    return 0;
}
