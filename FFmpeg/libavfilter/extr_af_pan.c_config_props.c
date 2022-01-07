
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int buf ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int channel_layout; int channels; int sample_rate; int format; TYPE_3__* dst; } ;
struct TYPE_7__ {int nb_output_channels; int** gain; int out_channel_layout; int* channel_map; int need_renorm; scalar_t__ pure_gains; int swr; scalar_t__ need_renumber; } ;
typedef TYPE_1__ PanContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int ENOMEM ;
 int FFMIN (int,int) ;
 int MAX_CHANNELS ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 scalar_t__ av_opt_set_int (int ,char*,int,int ) ;
 scalar_t__ fabs (int) ;
 int snprintf (char*,int,char*,char*,double,int) ;
 int swr_alloc_set_opts (int ,int,int ,int ,int,int ,int ,int ,TYPE_3__*) ;
 int swr_init (int ) ;
 int swr_set_channel_mapping (int ,int*) ;
 int swr_set_matrix (int ,double*,int) ;

__attribute__((used)) static int config_props(AVFilterLink *link)
{
    AVFilterContext *ctx = link->dst;
    PanContext *pan = ctx->priv;
    char buf[1024], *cur;
    int i, j, k, r;
    double t;

    if (pan->need_renumber) {

        for (i = j = 0; i < MAX_CHANNELS; i++) {
            if ((link->channel_layout >> i) & 1) {
                for (k = 0; k < pan->nb_output_channels; k++)
                    pan->gain[k][j] = pan->gain[k][i];
                j++;
            }
        }
    }



    if (link->channels > MAX_CHANNELS ||
        pan->nb_output_channels > MAX_CHANNELS) {
        av_log(ctx, AV_LOG_ERROR,
               "af_pan supports a maximum of %d channels. "
               "Feel free to ask for a higher limit.\n", MAX_CHANNELS);
        return AVERROR_PATCHWELCOME;
    }


    pan->swr = swr_alloc_set_opts(pan->swr,
                                  pan->out_channel_layout, link->format, link->sample_rate,
                                  link->channel_layout, link->format, link->sample_rate,
                                  0, ctx);
    if (!pan->swr)
        return AVERROR(ENOMEM);
    if (!link->channel_layout) {
        if (av_opt_set_int(pan->swr, "ich", link->channels, 0) < 0)
            return AVERROR(EINVAL);
    }
    if (!pan->out_channel_layout) {
        if (av_opt_set_int(pan->swr, "och", pan->nb_output_channels, 0) < 0)
            return AVERROR(EINVAL);
    }


    if (pan->pure_gains) {


        for (i = 0; i < pan->nb_output_channels; i++) {
            int ch_id = -1;
            for (j = 0; j < link->channels; j++) {
                if (pan->gain[i][j]) {
                    ch_id = j;
                    break;
                }
            }
            pan->channel_map[i] = ch_id;
        }

        av_opt_set_int(pan->swr, "icl", pan->out_channel_layout, 0);
        av_opt_set_int(pan->swr, "uch", pan->nb_output_channels, 0);
        swr_set_channel_mapping(pan->swr, pan->channel_map);
    } else {

        for (i = 0; i < pan->nb_output_channels; i++) {
            if (!((pan->need_renorm >> i) & 1))
                continue;
            t = 0;
            for (j = 0; j < link->channels; j++)
                t += fabs(pan->gain[i][j]);
            if (t > -1E-5 && t < 1E-5) {

                if (t)
                    av_log(ctx, AV_LOG_WARNING,
                           "Degenerate coefficients while renormalizing\n");
                continue;
            }
            for (j = 0; j < link->channels; j++)
                pan->gain[i][j] /= t;
        }
        av_opt_set_int(pan->swr, "icl", link->channel_layout, 0);
        av_opt_set_int(pan->swr, "ocl", pan->out_channel_layout, 0);
        swr_set_matrix(pan->swr, pan->gain[0], pan->gain[1] - pan->gain[0]);
    }

    r = swr_init(pan->swr);
    if (r < 0)
        return r;


    for (i = 0; i < pan->nb_output_channels; i++) {
        cur = buf;
        for (j = 0; j < link->channels; j++) {
            r = snprintf(cur, buf + sizeof(buf) - cur, "%s%.3g i%d",
                         j ? " + " : "", pan->gain[i][j], j);
            cur += FFMIN(buf + sizeof(buf) - cur, r);
        }
        av_log(ctx, AV_LOG_VERBOSE, "o%d = %s\n", i, buf);
    }

    if (pan->pure_gains) {
        av_log(ctx, AV_LOG_INFO, "Pure channel mapping detected:");
        for (i = 0; i < pan->nb_output_channels; i++)
            if (pan->channel_map[i] < 0)
                av_log(ctx, AV_LOG_INFO, " M");
            else
                av_log(ctx, AV_LOG_INFO, " %d", pan->channel_map[i]);
        av_log(ctx, AV_LOG_INFO, "\n");
        return 0;
    }
    return 0;
}
