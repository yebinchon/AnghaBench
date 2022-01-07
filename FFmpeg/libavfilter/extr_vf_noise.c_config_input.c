
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int h; int w; int format; TYPE_1__* dst; } ;
struct TYPE_9__ {int log2_chroma_h; } ;
struct TYPE_8__ {int * height; int bytewidth; int nb_planes; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_2__ NoiseContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 int AV_CEIL_RSHIFT (int ,int ) ;
 int av_image_fill_linesizes (int ,int ,int ) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    NoiseContext *n = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int ret;

    n->nb_planes = av_pix_fmt_count_planes(inlink->format);

    if ((ret = av_image_fill_linesizes(n->bytewidth, inlink->format, inlink->w)) < 0)
        return ret;

    n->height[1] = n->height[2] = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
    n->height[0] = n->height[3] = inlink->h;

    return 0;
}
