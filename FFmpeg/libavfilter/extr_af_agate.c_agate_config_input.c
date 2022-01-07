
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int sample_rate; TYPE_3__* dst; } ;
struct TYPE_5__ {double threshold; int attack; int release; double lin_knee_stop; double lin_knee_start; void* knee_stop; void* knee_start; void* thres; void* release_coeff; void* attack_coeff; scalar_t__ detection; int knee; } ;
typedef TYPE_1__ AudioGateContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 void* FFMIN (int,int) ;
 void* log (double) ;
 double sqrt (int ) ;

__attribute__((used)) static int agate_config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioGateContext *s = ctx->priv;
    double lin_threshold = s->threshold;
    double lin_knee_sqrt = sqrt(s->knee);

    if (s->detection)
        lin_threshold *= lin_threshold;

    s->attack_coeff = FFMIN(1., 1. / (s->attack * inlink->sample_rate / 4000.));
    s->release_coeff = FFMIN(1., 1. / (s->release * inlink->sample_rate / 4000.));
    s->lin_knee_stop = lin_threshold * lin_knee_sqrt;
    s->lin_knee_start = lin_threshold / lin_knee_sqrt;
    s->thres = log(lin_threshold);
    s->knee_start = log(s->lin_knee_start);
    s->knee_stop = log(s->lin_knee_stop);

    return 0;
}
