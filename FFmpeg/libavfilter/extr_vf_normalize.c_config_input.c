
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int format; TYPE_1__* dst; } ;
struct TYPE_14__ {int nb_components; } ;
struct TYPE_13__ {int step; int history_len; int smoothing; int * history_mem; TYPE_3__* max; TYPE_2__* min; int num_components; int co; } ;
struct TYPE_12__ {int * history; } ;
struct TYPE_11__ {int * history; } ;
struct TYPE_10__ {TYPE_4__* priv; } ;
typedef TYPE_4__ NormalizeContext ;
typedef TYPE_5__ AVPixFmtDescriptor ;
typedef TYPE_6__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_get_padded_bits_per_pixel (TYPE_5__ const*) ;
 int * av_malloc (int) ;
 TYPE_5__* av_pix_fmt_desc_get (int ) ;
 int ff_fill_rgba_map (int ,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    NormalizeContext *s = inlink->dst->priv;

    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int c;

    ff_fill_rgba_map(s->co, inlink->format);
    s->num_components = desc->nb_components;
    s->step = av_get_padded_bits_per_pixel(desc) >> 3;





    s->history_len = s->smoothing + 1;



    s->history_mem = av_malloc(s->history_len * 6);
    if (s->history_mem == ((void*)0))
        return AVERROR(ENOMEM);

    for (c = 0; c < 3; c++) {
        s->min[c].history = s->history_mem + (c*2) * s->history_len;
        s->max[c].history = s->history_mem + (c*2+1) * s->history_len;
    }
    return 0;
}
