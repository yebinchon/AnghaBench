
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int format; TYPE_1__* dst; } ;
struct TYPE_11__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_10__ {int nb_channels; int * chstats; } ;
struct TYPE_9__ {int * outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ DRMeterContext ;
typedef int ChannelStats ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;




 int ff_filter_frame (int ,TYPE_3__*) ;
 int update_stat (TYPE_2__*,int *,float const) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *buf)
{
    DRMeterContext *s = inlink->dst->priv;
    const int channels = s->nb_channels;
    int i, c;

    switch (inlink->format) {
    case 128:
        for (c = 0; c < channels; c++) {
            ChannelStats *p = &s->chstats[c];
            const float *src = (const float *)buf->extended_data[c];

            for (i = 0; i < buf->nb_samples; i++, src++)
                update_stat(s, p, *src);
        }
        break;
    case 129: {
        const float *src = (const float *)buf->extended_data[0];

        for (i = 0; i < buf->nb_samples; i++) {
            for (c = 0; c < channels; c++, src++)
                update_stat(s, &s->chstats[c], *src);
        }}
        break;
    }

    return ff_filter_frame(inlink->dst->outputs[0], buf);
}
