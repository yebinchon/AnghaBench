
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int sample_rate; int channels; TYPE_3__* dst; } ;
struct TYPE_6__ {int window_size; int window_ratio; int start_duration; int start_silence; int stop_duration; int stop_silence; int mode; scalar_t__ start_periods; scalar_t__ stop_found_periods; scalar_t__ stop_holdoff_end; scalar_t__ stop_holdoff_offset; void* stop_silence_hold; void* stop_holdoff; scalar_t__ start_found_periods; scalar_t__ start_holdoff_end; scalar_t__ start_holdoff_offset; void* start_silence_hold; void* start_holdoff; int stop_silence_opt; int stop_duration_opt; int start_silence_opt; int start_duration_opt; void* window; int next_pts; } ;
typedef TYPE_1__ SilenceRemoveContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_NOPTS_VALUE ;
 int AV_TIME_BASE ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 int SILENCE_COPY ;
 int SILENCE_TRIM ;
 void* av_malloc_array (int,int) ;
 void* av_rescale (int ,int,int ) ;
 int clear_window (TYPE_1__*) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    SilenceRemoveContext *s = ctx->priv;

    s->next_pts = AV_NOPTS_VALUE;
    s->window_size = FFMAX((inlink->sample_rate * s->window_ratio), 1) * inlink->channels;
    s->window = av_malloc_array(s->window_size, sizeof(*s->window));
    if (!s->window)
        return AVERROR(ENOMEM);

    clear_window(s);

    s->start_duration = av_rescale(s->start_duration_opt, inlink->sample_rate,
                                   AV_TIME_BASE);
    s->start_silence = av_rescale(s->start_silence_opt, inlink->sample_rate,
                                   AV_TIME_BASE);
    s->stop_duration = av_rescale(s->stop_duration_opt, inlink->sample_rate,
                                   AV_TIME_BASE);
    s->stop_silence = av_rescale(s->stop_silence_opt, inlink->sample_rate,
                                   AV_TIME_BASE);

    s->start_holdoff = av_malloc_array(FFMAX(s->start_duration, 1),
                                       sizeof(*s->start_holdoff) *
                                       inlink->channels);
    if (!s->start_holdoff)
        return AVERROR(ENOMEM);

    s->start_silence_hold = av_malloc_array(FFMAX(s->start_silence, 1),
                                            sizeof(*s->start_silence_hold) *
                                            inlink->channels);
    if (!s->start_silence_hold)
        return AVERROR(ENOMEM);

    s->start_holdoff_offset = 0;
    s->start_holdoff_end = 0;
    s->start_found_periods = 0;

    s->stop_holdoff = av_malloc_array(FFMAX(s->stop_duration, 1),
                                      sizeof(*s->stop_holdoff) *
                                      inlink->channels);
    if (!s->stop_holdoff)
        return AVERROR(ENOMEM);

    s->stop_silence_hold = av_malloc_array(FFMAX(s->stop_silence, 1),
                                           sizeof(*s->stop_silence_hold) *
                                           inlink->channels);
    if (!s->stop_silence_hold)
        return AVERROR(ENOMEM);

    s->stop_holdoff_offset = 0;
    s->stop_holdoff_end = 0;
    s->stop_found_periods = 0;

    if (s->start_periods)
        s->mode = SILENCE_TRIM;
    else
        s->mode = SILENCE_COPY;

    return 0;
}
