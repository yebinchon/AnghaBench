
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {char* map; int channel_layout; int inputs; TYPE_1__* channels; } ;
struct TYPE_6__ {int input; int in_channel; int in_channel_idx; } ;
typedef TYPE_2__ JoinContext ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int PARSE_CHANNEL (char*,int,char*) ;
 int av_get_channel_layout_channel_index (int,int) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 char* strchr (char*,char) ;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static int parse_maps(AVFilterContext *ctx)
{
    JoinContext *s = ctx->priv;
    char separator = '|';
    char *cur = s->map;

    while (cur && *cur) {
        char *sep, *next, *p;
        uint64_t in_channel = 0, out_channel = 0;
        int input_idx, out_ch_idx, in_ch_idx;

        next = strchr(cur, separator);
        if (next)
            *next++ = 0;


        if (!(sep = strchr(cur, '-'))) {
            av_log(ctx, AV_LOG_ERROR, "Missing separator '-' in channel "
                   "map '%s'\n", cur);
            return AVERROR(EINVAL);
        }
        *sep++ = 0;
        if (!(out_channel = av_get_channel_layout(sep))) { av_log(ctx, AV_LOG_ERROR, "Invalid " "output" " channel: %s.\n", sep); return AVERROR(EINVAL); } if (av_get_channel_layout_nb_channels(out_channel) != 1) { av_log(ctx, AV_LOG_ERROR, "Channel map describes more than one " "output" " channel.\n"); return AVERROR(EINVAL); };
        if (!(out_channel & s->channel_layout)) {
            av_log(ctx, AV_LOG_ERROR, "Output channel '%s' is not present in "
                   "requested channel layout.\n", sep);
            return AVERROR(EINVAL);
        }

        out_ch_idx = av_get_channel_layout_channel_index(s->channel_layout,
                                                         out_channel);
        if (s->channels[out_ch_idx].input >= 0) {
            av_log(ctx, AV_LOG_ERROR, "Multiple maps for output channel "
                   "'%s'.\n", sep);
            return AVERROR(EINVAL);
        }


        input_idx = strtol(cur, &cur, 0);
        if (input_idx < 0 || input_idx >= s->inputs) {
            av_log(ctx, AV_LOG_ERROR, "Invalid input stream index: %d.\n",
                   input_idx);
            return AVERROR(EINVAL);
        }

        if (*cur)
            cur++;

        in_ch_idx = strtol(cur, &p, 0);
        if (p == cur) {


            if (!(in_channel = av_get_channel_layout(cur))) { av_log(ctx, AV_LOG_ERROR, "Invalid " "input" " channel: %s.\n", cur); return AVERROR(EINVAL); } if (av_get_channel_layout_nb_channels(in_channel) != 1) { av_log(ctx, AV_LOG_ERROR, "Channel map describes more than one " "input" " channel.\n"); return AVERROR(EINVAL); };
        }

        s->channels[out_ch_idx].input = input_idx;
        if (in_channel)
            s->channels[out_ch_idx].in_channel = in_channel;
        else
            s->channels[out_ch_idx].in_channel_idx = in_ch_idx;

        cur = next;
    }
    return 0;
}
