
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int channels; int channel_layout; TYPE_3__* src; } ;
struct TYPE_6__ {int buf_size; int nb_out_channels; void* output; void* overlap_buffer; int lfe_out; int * output_levels; int bc_out; int br_out; int bl_out; int sr_out; int sl_out; int fr_out; int fl_out; int fc_out; int level_out; int * irdft; } ;
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
 int ENOMEM ;
 int IDFT_C2R ;
 int * av_calloc (int,int) ;
 int av_get_channel_layout_channel_index (int ,int ) ;
 int * av_malloc_array (int,int) ;
 int av_rdft_init (int ,int ) ;
 void* ff_get_audio_buffer (TYPE_2__*,int) ;
 int ff_log2 (int) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioSurroundContext *s = ctx->priv;
    int ch;

    s->irdft = av_calloc(outlink->channels, sizeof(*s->irdft));
    if (!s->irdft)
        return AVERROR(ENOMEM);

    for (ch = 0; ch < outlink->channels; ch++) {
        s->irdft[ch] = av_rdft_init(ff_log2(s->buf_size), IDFT_C2R);
        if (!s->irdft[ch])
            return AVERROR(ENOMEM);
    }
    s->nb_out_channels = outlink->channels;
    s->output_levels = av_malloc_array(s->nb_out_channels, sizeof(*s->output_levels));
    if (!s->output_levels)
        return AVERROR(ENOMEM);
    for (ch = 0; ch < s->nb_out_channels; ch++)
        s->output_levels[ch] = s->level_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_FRONT_CENTER);
    if (ch >= 0)
        s->output_levels[ch] *= s->fc_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_FRONT_LEFT);
    if (ch >= 0)
        s->output_levels[ch] *= s->fl_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_FRONT_RIGHT);
    if (ch >= 0)
        s->output_levels[ch] *= s->fr_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_SIDE_LEFT);
    if (ch >= 0)
        s->output_levels[ch] *= s->sl_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_SIDE_RIGHT);
    if (ch >= 0)
        s->output_levels[ch] *= s->sr_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_BACK_LEFT);
    if (ch >= 0)
        s->output_levels[ch] *= s->bl_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_BACK_RIGHT);
    if (ch >= 0)
        s->output_levels[ch] *= s->br_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_BACK_CENTER);
    if (ch >= 0)
        s->output_levels[ch] *= s->bc_out;
    ch = av_get_channel_layout_channel_index(outlink->channel_layout, AV_CH_LOW_FREQUENCY);
    if (ch >= 0)
        s->output_levels[ch] *= s->lfe_out;

    s->output = ff_get_audio_buffer(outlink, s->buf_size * 2);
    s->overlap_buffer = ff_get_audio_buffer(outlink, s->buf_size * 2);
    if (!s->overlap_buffer || !s->output)
        return AVERROR(ENOMEM);

    return 0;
}
