
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int codec_type; int height; int width; } ;
struct TYPE_13__ {TYPE_3__* priv; } ;
struct TYPE_12__ {int frame_rate; int h; int w; int time_base; TYPE_5__* src; } ;
struct TYPE_11__ {TYPE_2__* st; } ;
struct TYPE_10__ {TYPE_1__* st; } ;
struct TYPE_9__ {int r_frame_rate; int time_base; TYPE_6__* codecpar; } ;
typedef TYPE_2__ MovieStream ;
typedef TYPE_3__ MovieContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;
typedef TYPE_6__ AVCodecParameters ;




 unsigned int FF_OUTLINK_IDX (TYPE_4__*) ;

__attribute__((used)) static int movie_config_output_props(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    MovieContext *movie = ctx->priv;
    unsigned out_id = FF_OUTLINK_IDX(outlink);
    MovieStream *st = &movie->st[out_id];
    AVCodecParameters *c = st->st->codecpar;

    outlink->time_base = st->st->time_base;

    switch (c->codec_type) {
    case 128:
        outlink->w = c->width;
        outlink->h = c->height;
        outlink->frame_rate = st->st->r_frame_rate;
        break;
    case 129:
        break;
    }

    return 0;
}
