
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_13__ {int codec_type; int format; int sample_rate; int channel_layout; } ;
struct TYPE_12__ {int nb_outputs; TYPE_4__** outputs; TYPE_3__* priv; } ;
struct TYPE_11__ {int in_channel_layouts; int in_samplerates; int in_formats; } ;
struct TYPE_10__ {TYPE_2__* st; } ;
struct TYPE_9__ {TYPE_1__* st; } ;
struct TYPE_8__ {TYPE_6__* codecpar; } ;
typedef TYPE_2__ MovieStream ;
typedef TYPE_3__ MovieContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;
typedef TYPE_6__ AVCodecParameters ;




 int avfilter_make_format64_list (int*) ;
 int ff_channel_layouts_ref (int ,int *) ;
 int ff_formats_ref (int ,int *) ;
 int ff_make_format_list (int*) ;

__attribute__((used)) static int movie_query_formats(AVFilterContext *ctx)
{
    MovieContext *movie = ctx->priv;
    int list[] = { 0, -1 };
    int64_t list64[] = { 0, -1 };
    int i, ret;

    for (i = 0; i < ctx->nb_outputs; i++) {
        MovieStream *st = &movie->st[i];
        AVCodecParameters *c = st->st->codecpar;
        AVFilterLink *outlink = ctx->outputs[i];

        switch (c->codec_type) {
        case 128:
            list[0] = c->format;
            if ((ret = ff_formats_ref(ff_make_format_list(list), &outlink->in_formats)) < 0)
                return ret;
            break;
        case 129:
            list[0] = c->format;
            if ((ret = ff_formats_ref(ff_make_format_list(list), &outlink->in_formats)) < 0)
                return ret;
            list[0] = c->sample_rate;
            if ((ret = ff_formats_ref(ff_make_format_list(list), &outlink->in_samplerates)) < 0)
                return ret;
            list64[0] = c->channel_layout;
            if ((ret = ff_channel_layouts_ref(avfilter_make_format64_list(list64),
                                   &outlink->in_channel_layouts)) < 0)
                return ret;
            break;
        }
    }

    return 0;
}
