
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_2__* priv; } ;
struct TYPE_9__ {int channels; scalar_t__ format; int sample_rate; TYPE_4__* dst; } ;
struct TYPE_7__ {int num; int den; } ;
struct TYPE_8__ {int nb_channels; int depth; int* fg; int colors; TYPE_1__ frame_rate; int nb_samples; } ;
typedef TYPE_2__ AudioBitScopeContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_SAMPLE_FMT_S16P ;
 int ENOMEM ;
 int FFMAX (int,int ) ;
 int av_free (char*) ;
 int* av_malloc_array (int,int) ;
 int av_parse_color (int*,char*,int,TYPE_4__*) ;
 int av_rescale (int ,int ,int ) ;
 char* av_strdup (int ) ;
 char* av_strtok (char*,char*,char**) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioBitScopeContext *s = ctx->priv;
    int ch;
    char *colors, *saveptr = ((void*)0);

    s->nb_samples = FFMAX(1, av_rescale(inlink->sample_rate, s->frame_rate.den, s->frame_rate.num));
    s->nb_channels = inlink->channels;
    s->depth = inlink->format == AV_SAMPLE_FMT_S16P ? 16 : 32;

    s->fg = av_malloc_array(s->nb_channels, 4 * sizeof(*s->fg));
    if (!s->fg)
        return AVERROR(ENOMEM);

    colors = av_strdup(s->colors);
    if (!colors)
        return AVERROR(ENOMEM);

    for (ch = 0; ch < s->nb_channels; ch++) {
        uint8_t fg[4] = { 0xff, 0xff, 0xff, 0xff };
        char *color;

        color = av_strtok(ch == 0 ? colors : ((void*)0), " |", &saveptr);
        if (color)
            av_parse_color(fg, color, -1, ctx);
        s->fg[4 * ch + 0] = fg[0];
        s->fg[4 * ch + 1] = fg[1];
        s->fg[4 * ch + 2] = fg[2];
        s->fg[4 * ch + 3] = fg[3];
    }
    av_free(colors);

    return 0;
}
