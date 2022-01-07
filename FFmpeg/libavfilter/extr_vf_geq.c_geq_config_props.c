
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int format; TYPE_2__* dst; } ;
struct TYPE_12__ {int nb_components; TYPE_1__* comp; int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_11__ {int planes; int bps; int vsub; int hsub; } ;
struct TYPE_10__ {TYPE_3__* priv; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_3__ GEQContext ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFilterLink ;


 int av_assert0 (TYPE_4__ const*) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int geq_config_props(AVFilterLink *inlink)
{
    GEQContext *geq = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);

    av_assert0(desc);

    geq->hsub = desc->log2_chroma_w;
    geq->vsub = desc->log2_chroma_h;
    geq->bps = desc->comp[0].depth;
    geq->planes = desc->nb_components;
    return 0;
}
