
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int nb_samples; int sample_rate; int channel_layout; } ;
struct TYPE_5__ {TYPE_4__* src; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ ANullContext ;


 int AV_LOG_VERBOSE ;
 int av_get_channel_layout_string (char*,int,int ,int ) ;
 int av_log (TYPE_4__*,int ,char*,int ,char*,int ) ;

__attribute__((used)) static int config_props(AVFilterLink *outlink)
{
    ANullContext *null = outlink->src->priv;
    char buf[128];

    av_get_channel_layout_string(buf, sizeof(buf), 0, null->channel_layout);
    av_log(outlink->src, AV_LOG_VERBOSE,
           "sample_rate:%d channel_layout:'%s' nb_samples:%d\n",
           null->sample_rate, buf, null->nb_samples);

    return 0;
}
