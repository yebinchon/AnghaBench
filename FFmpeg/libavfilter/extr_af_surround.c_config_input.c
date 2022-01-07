
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int channels; double sample_rate; int format; int channel_layout; TYPE_3__* dst; } ;
struct TYPE_6__ {int buf_size; int nb_in_channels; float lowcut; float lowcutf; float highcut; float highcutf; int fifo; int input; int lfe_in; int * input_levels; int bc_in; int br_in; int bl_in; int sr_in; int sl_in; int fr_in; int fl_in; int fc_in; int level_in; int * rdft; } ;
typedef TYPE_1__ AudioSurroundContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_CH_BACK_CENTER ;
 int AV_CH_BACK_LEFT ;
 int AV_CH_BACK_RIGHT ;
 int AV_CH_FRONT_CENTER ;
 int AV_CH_FRONT_LEFT ;
 int AV_CH_FRONT_RIGHT ;
 int AV_CH_LOW_FREQUENCY ;
 int AV_CH_SIDE_LEFT ;
 int AV_CH_SIDE_RIGHT ;
 int DFT_R2C ;
 int ENOMEM ;
 int av_audio_fifo_alloc (int ,int,int) ;
 int * av_calloc (int,int) ;
 int av_get_channel_layout_channel_index (int ,int ) ;
 int * av_malloc_array (int,int) ;
 int av_rdft_init (int ,int ) ;
 int ff_get_audio_buffer (TYPE_2__*,int) ;
 int ff_log2 (int) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioSurroundContext *s = ctx->priv;
    int ch;

    s->rdft = av_calloc(inlink->channels, sizeof(*s->rdft));
    if (!s->rdft)
        return AVERROR(ENOMEM);

    for (ch = 0; ch < inlink->channels; ch++) {
        s->rdft[ch] = av_rdft_init(ff_log2(s->buf_size), DFT_R2C);
        if (!s->rdft[ch])
            return AVERROR(ENOMEM);
    }
    s->nb_in_channels = inlink->channels;
    s->input_levels = av_malloc_array(s->nb_in_channels, sizeof(*s->input_levels));
    if (!s->input_levels)
        return AVERROR(ENOMEM);
    for (ch = 0; ch < s->nb_in_channels; ch++)
        s->input_levels[ch] = s->level_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_FRONT_CENTER);
    if (ch >= 0)
        s->input_levels[ch] *= s->fc_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_FRONT_LEFT);
    if (ch >= 0)
        s->input_levels[ch] *= s->fl_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_FRONT_RIGHT);
    if (ch >= 0)
        s->input_levels[ch] *= s->fr_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_SIDE_LEFT);
    if (ch >= 0)
        s->input_levels[ch] *= s->sl_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_SIDE_RIGHT);
    if (ch >= 0)
        s->input_levels[ch] *= s->sr_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_BACK_LEFT);
    if (ch >= 0)
        s->input_levels[ch] *= s->bl_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_BACK_RIGHT);
    if (ch >= 0)
        s->input_levels[ch] *= s->br_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_BACK_CENTER);
    if (ch >= 0)
        s->input_levels[ch] *= s->bc_in;
    ch = av_get_channel_layout_channel_index(inlink->channel_layout, AV_CH_LOW_FREQUENCY);
    if (ch >= 0)
        s->input_levels[ch] *= s->lfe_in;

    s->input = ff_get_audio_buffer(inlink, s->buf_size * 2);
    if (!s->input)
        return AVERROR(ENOMEM);

    s->fifo = av_audio_fifo_alloc(inlink->format, inlink->channels, s->buf_size);
    if (!s->fifo)
        return AVERROR(ENOMEM);

    s->lowcut = 1.f * s->lowcutf / (inlink->sample_rate * 0.5) * (s->buf_size / 2);
    s->highcut = 1.f * s->highcutf / (inlink->sample_rate * 0.5) * (s->buf_size / 2);

    return 0;
}
