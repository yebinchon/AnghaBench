
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {double freq; double width; double gain; } ;
struct TYPE_10__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_9__ {double sample_rate; } ;
struct TYPE_8__ {int nb_filters; int video; scalar_t__ draw_curves; TYPE_5__* filters; } ;
typedef TYPE_1__ AudioNEqualizerContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOSYS ;
 int draw_curves (TYPE_3__*,TYPE_2__*,int ) ;
 int equalizer (TYPE_5__*,double) ;
 int sscanf (char const*,char*,int*,double*,double*,double*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    AudioNEqualizerContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int ret = AVERROR(ENOSYS);

    if (!strcmp(cmd, "change")) {
        double freq, width, gain;
        int filter;

        if (sscanf(args, "%d|f=%lf|w=%lf|g=%lf", &filter, &freq, &width, &gain) != 4)
            return AVERROR(EINVAL);

        if (filter < 0 || filter >= s->nb_filters)
            return AVERROR(EINVAL);

        if (freq < 0 || freq > inlink->sample_rate / 2.0)
            return AVERROR(EINVAL);

        s->filters[filter].freq = freq;
        s->filters[filter].width = width;
        s->filters[filter].gain = gain;
        equalizer(&s->filters[filter], inlink->sample_rate);
        if (s->draw_curves)
            draw_curves(ctx, inlink, s->video);

        ret = 0;
    }

    return ret;
}
