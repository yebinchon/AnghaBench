
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sample_rate; } ;
struct TYPE_5__ {size_t nb_filters; int nb_allocated; int * filters; } ;
typedef int EqualizatorFilter ;
typedef TYPE_1__ AudioNEqualizerContext ;
typedef TYPE_2__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * av_calloc (int,int) ;
 int av_free (int *) ;
 int equalizer (int *,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int add_filter(AudioNEqualizerContext *s, AVFilterLink *inlink)
{
    equalizer(&s->filters[s->nb_filters], inlink->sample_rate);
    if (s->nb_filters >= s->nb_allocated) {
        EqualizatorFilter *filters;

        filters = av_calloc(s->nb_allocated, 2 * sizeof(*s->filters));
        if (!filters)
            return AVERROR(ENOMEM);
        memcpy(filters, s->filters, sizeof(*s->filters) * s->nb_allocated);
        av_free(s->filters);
        s->filters = filters;
        s->nb_allocated *= 2;
    }
    s->nb_filters++;

    return 0;
}
