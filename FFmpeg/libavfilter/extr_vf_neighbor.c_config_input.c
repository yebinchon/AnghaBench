
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


struct TYPE_14__ {TYPE_2__* filter; TYPE_3__* priv; } ;
struct TYPE_13__ {int format; void* h; void* w; TYPE_6__* dst; } ;
struct TYPE_12__ {int log2_chroma_h; int log2_chroma_w; TYPE_1__* comp; } ;
struct TYPE_11__ {int depth; int max; int bpc; int filter; int nb_planes; void** planeheight; void** planewidth; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_3__ NContext ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 void* AV_CEIL_RSHIFT (void*,int ) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;
 int deflate ;
 int deflate16 ;
 int dilation ;
 int dilation16 ;
 int erosion ;
 int erosion16 ;
 int inflate ;
 int inflate16 ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    NContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);

    s->depth = desc->comp[0].depth;
    s->max = (1 << s->depth) - 1;
    s->bpc = (s->depth + 7) / 8;

    s->planewidth[1] = s->planewidth[2] = AV_CEIL_RSHIFT(inlink->w, desc->log2_chroma_w);
    s->planewidth[0] = s->planewidth[3] = inlink->w;
    s->planeheight[1] = s->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    if (!strcmp(ctx->filter->name, "erosion"))
        s->filter = s->depth > 8 ? erosion16 : erosion;
    else if (!strcmp(ctx->filter->name, "dilation"))
        s->filter = s->depth > 8 ? dilation16 : dilation;
    else if (!strcmp(ctx->filter->name, "deflate"))
        s->filter = s->depth > 8 ? deflate16 : deflate;
    else if (!strcmp(ctx->filter->name, "inflate"))
        s->filter = s->depth > 8 ? inflate16 : inflate;

    return 0;
}
