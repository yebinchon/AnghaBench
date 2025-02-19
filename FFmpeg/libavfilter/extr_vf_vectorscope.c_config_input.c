
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int is_yuv; int size; int mult; int depth; int tmin; int lthreshold; int tmax; int hthreshold; scalar_t__ mode; int pd; int x; int y; int graticule; int* bg_color; int bgopacity; void** planewidth; void** planeheight; int vsub; int hsub; int graticulef; int vectorscope; } ;
typedef TYPE_2__ VectorscopeContext ;
struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {int format; void* w; void* h; TYPE_5__* dst; } ;
struct TYPE_11__ {int flags; int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 void* AV_CEIL_RSHIFT (void*,int ) ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_FLAG_RGB ;





 int EINVAL ;
 scalar_t__ GRAY ;
 int av_log (TYPE_5__*,int ,char*) ;
 TYPE_3__* av_pix_fmt_desc_get (int) ;
 int color_graticule ;
 int color_graticule16 ;
 int green_graticule ;
 int green_graticule16 ;
 int none_graticule ;
 int vectorscope16 ;
 int vectorscope8 ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    AVFilterContext *ctx = inlink->dst;
    VectorscopeContext *s = ctx->priv;

    s->is_yuv = !(desc->flags & AV_PIX_FMT_FLAG_RGB);
    s->size = 1 << desc->comp[0].depth;
    s->mult = s->size / 256;
    s->depth = desc->comp[0].depth;
    s->tmin = s->lthreshold * (s->size - 1);
    s->tmax = s->hthreshold * (s->size - 1);

    if (s->tmin > s->tmax) {
        av_log(ctx, AV_LOG_ERROR, "low threshold should be less than high threshold\n");
        return AVERROR(EINVAL);
    }

    if (s->mode == GRAY && s->is_yuv)
        s->pd = 0;
    else {
        if ((s->x == 1 && s->y == 2) || (s->x == 2 && s->y == 1))
            s->pd = 0;
        else if ((s->x == 0 && s->y == 2) || (s->x == 2 && s->y == 0))
            s->pd = 1;
        else if ((s->x == 0 && s->y == 1) || (s->x == 1 && s->y == 0))
            s->pd = 2;
    }

    if (s->size == 256)
        s->vectorscope = vectorscope8;
    else
        s->vectorscope = vectorscope16;

    s->graticulef = none_graticule;

    if (s->is_yuv && s->size == 256) {
        if (s->graticule == 1)
            s->graticulef = green_graticule;
        else if (s->graticule == 2)
            s->graticulef = color_graticule;
    } else if (s->is_yuv) {
        if (s->graticule == 1)
            s->graticulef = green_graticule16;
        else if (s->graticule == 2)
            s->graticulef = color_graticule16;
    }

    s->bg_color[3] = s->bgopacity * (s->size - 1);

    switch (inlink->format) {
    case 129:
    case 130:
    case 128:
    case 132:
    case 131:
        s->bg_color[0] = 0;
        s->bg_color[1] = 0;
        s->bg_color[2] = 0;
        break;
    default:
        s->bg_color[0] = 0;
        s->bg_color[1] = s->size / 2 - 1;
        s->bg_color[2] = s->size / 2 - 1;
    }

    s->hsub = desc->log2_chroma_w;
    s->vsub = desc->log2_chroma_h;
    s->planeheight[1] = s->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;
    s->planewidth[1] = s->planewidth[2] = AV_CEIL_RSHIFT(inlink->w, desc->log2_chroma_w);
    s->planewidth[0] = s->planewidth[3] = inlink->w;

    return 0;
}
