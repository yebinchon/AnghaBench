
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int format; void* h; void* w; TYPE_1__* dst; } ;
struct TYPE_11__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_10__ {int max_step; void** planeheight; void** planewidth; } ;
struct TYPE_9__ {TYPE_2__* priv; } ;
typedef TYPE_2__ FlipContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 void* AV_CEIL_RSHIFT (void*,int const) ;
 int av_image_fill_max_pixsteps (int ,int *,TYPE_3__ const*) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_hflip_init (TYPE_2__*,int ,int) ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    FlipContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(inlink->format);
    const int hsub = pix_desc->log2_chroma_w;
    const int vsub = pix_desc->log2_chroma_h;
    int nb_planes;

    av_image_fill_max_pixsteps(s->max_step, ((void*)0), pix_desc);
    s->planewidth[0] = s->planewidth[3] = inlink->w;
    s->planewidth[1] = s->planewidth[2] = AV_CEIL_RSHIFT(inlink->w, hsub);
    s->planeheight[0] = s->planeheight[3] = inlink->h;
    s->planeheight[1] = s->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, vsub);

    nb_planes = av_pix_fmt_count_planes(inlink->format);

    return ff_hflip_init(s, s->max_step, nb_planes);
}
