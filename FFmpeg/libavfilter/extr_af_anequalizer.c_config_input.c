
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int channel; double freq; int ignore; int type; int gain; int width; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int channels; double sample_rate; TYPE_3__* dst; } ;
struct TYPE_8__ {int nb_allocated; size_t nb_filters; TYPE_5__* filters; int args; } ;
typedef TYPE_1__ AudioNEqualizerContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ NB_TYPES ;
 int add_filter (TYPE_1__*,TYPE_2__*) ;
 TYPE_5__* av_calloc (int,int) ;
 int av_clip (int ,int ,scalar_t__) ;
 int av_free (char*) ;
 char* av_strdup (int ) ;
 char* av_strtok (char*,char*,char**) ;
 int sscanf (char*,char*,int*,double*,int *,int *,...) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioNEqualizerContext *s = ctx->priv;
    char *args = av_strdup(s->args);
    char *saveptr = ((void*)0);
    int ret = 0;

    if (!args)
        return AVERROR(ENOMEM);

    s->nb_allocated = 32 * inlink->channels;
    s->filters = av_calloc(inlink->channels, 32 * sizeof(*s->filters));
    if (!s->filters) {
        s->nb_allocated = 0;
        av_free(args);
        return AVERROR(ENOMEM);
    }

    while (1) {
        char *arg = av_strtok(s->nb_filters == 0 ? args : ((void*)0), "|", &saveptr);

        if (!arg)
            break;

        s->filters[s->nb_filters].type = 0;
        if (sscanf(arg, "c%d f=%lf w=%lf g=%lf t=%d", &s->filters[s->nb_filters].channel,
                                                     &s->filters[s->nb_filters].freq,
                                                     &s->filters[s->nb_filters].width,
                                                     &s->filters[s->nb_filters].gain,
                                                     &s->filters[s->nb_filters].type) != 5 &&
            sscanf(arg, "c%d f=%lf w=%lf g=%lf", &s->filters[s->nb_filters].channel,
                                                &s->filters[s->nb_filters].freq,
                                                &s->filters[s->nb_filters].width,
                                                &s->filters[s->nb_filters].gain) != 4 ) {
            av_free(args);
            return AVERROR(EINVAL);
        }

        if (s->filters[s->nb_filters].freq < 0 ||
            s->filters[s->nb_filters].freq > inlink->sample_rate / 2.0)
            s->filters[s->nb_filters].ignore = 1;

        if (s->filters[s->nb_filters].channel < 0 ||
            s->filters[s->nb_filters].channel >= inlink->channels)
            s->filters[s->nb_filters].ignore = 1;

        s->filters[s->nb_filters].type = av_clip(s->filters[s->nb_filters].type, 0, NB_TYPES - 1);
        ret = add_filter(s, inlink);
        if (ret < 0)
            break;
    }

    av_free(args);

    return ret;
}
