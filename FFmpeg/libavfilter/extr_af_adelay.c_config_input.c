
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {int channels; int format; float sample_rate; TYPE_4__* dst; } ;
struct TYPE_9__ {int nb_delays; char* delays; float padding; int delay_channel; int max_delay; int block_align; TYPE_1__* chandelay; scalar_t__ all; } ;
struct TYPE_8__ {float delay; int samples; } ;
typedef TYPE_1__ ChanDelay ;
typedef TYPE_2__ AudioDelayContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;





 int EINVAL ;
 int ENOMEM ;
 int FFMAX (int ,float) ;
 float FFMIN (float,float) ;
 TYPE_1__* av_calloc (int,int) ;
 int av_get_bytes_per_sample (int) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int av_malloc_array (float,int ) ;
 int av_sscanf (char*,char*,float*,...) ;
 char* av_strtok (char*,char*,char**) ;
 int delay_channel_dblp ;
 int delay_channel_fltp ;
 int delay_channel_s16p ;
 int delay_channel_s32p ;
 int delay_channel_u8p ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioDelayContext *s = ctx->priv;
    char *p, *arg, *saveptr = ((void*)0);
    int i;

    s->chandelay = av_calloc(inlink->channels, sizeof(*s->chandelay));
    if (!s->chandelay)
        return AVERROR(ENOMEM);
    s->nb_delays = inlink->channels;
    s->block_align = av_get_bytes_per_sample(inlink->format);

    p = s->delays;
    for (i = 0; i < s->nb_delays; i++) {
        ChanDelay *d = &s->chandelay[i];
        float delay, div;
        char type = 0;
        int ret;

        if (!(arg = av_strtok(p, "|", &saveptr)))
            break;

        p = ((void*)0);

        ret = av_sscanf(arg, "%d%c", &d->delay, &type);
        if (ret != 2 || type != 'S') {
            div = type == 's' ? 1.0 : 1000.0;
            av_sscanf(arg, "%f", &delay);
            d->delay = delay * inlink->sample_rate / div;
        }

        if (d->delay < 0) {
            av_log(ctx, AV_LOG_ERROR, "Delay must be non negative number.\n");
            return AVERROR(EINVAL);
        }
    }

    if (s->all && i) {
        for (int j = i; j < s->nb_delays; j++)
            s->chandelay[j].delay = s->chandelay[i-1].delay;
    }

    s->padding = s->chandelay[0].delay;
    for (i = 1; i < s->nb_delays; i++) {
        ChanDelay *d = &s->chandelay[i];

        s->padding = FFMIN(s->padding, d->delay);
    }

    if (s->padding) {
        for (i = 0; i < s->nb_delays; i++) {
            ChanDelay *d = &s->chandelay[i];

            d->delay -= s->padding;
        }
    }

    for (i = 0; i < s->nb_delays; i++) {
        ChanDelay *d = &s->chandelay[i];

        if (!d->delay)
            continue;

        d->samples = av_malloc_array(d->delay, s->block_align);
        if (!d->samples)
            return AVERROR(ENOMEM);

        s->max_delay = FFMAX(s->max_delay, d->delay);
    }

    switch (inlink->format) {
    case 128 : s->delay_channel = delay_channel_u8p ; break;
    case 130: s->delay_channel = delay_channel_s16p; break;
    case 129: s->delay_channel = delay_channel_s32p; break;
    case 131: s->delay_channel = delay_channel_fltp; break;
    case 132: s->delay_channel = delay_channel_dblp; break;
    }

    return 0;
}
