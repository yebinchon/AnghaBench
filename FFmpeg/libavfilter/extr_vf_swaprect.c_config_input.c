
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int w; int format; TYPE_3__* dst; } ;
struct TYPE_5__ {int temp; int * pixsteps; int nb_planes; int desc; int y2; int x2; int y1; int x1; int h; int w; } ;
typedef TYPE_1__ SwapRectContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int av_image_fill_max_pixsteps (int *,int *,int ) ;
 int av_malloc_array (int ,int ) ;
 int av_pix_fmt_count_planes (int ) ;
 int av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    SwapRectContext *s = ctx->priv;

    if (!s->w || !s->h ||
        !s->x1 || !s->y1 ||
        !s->x2 || !s->y2)
        return AVERROR(EINVAL);

    s->desc = av_pix_fmt_desc_get(inlink->format);
    av_image_fill_max_pixsteps(s->pixsteps, ((void*)0), s->desc);
    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    s->temp = av_malloc_array(inlink->w, s->pixsteps[0]);
    if (!s->temp)
        return AVERROR(ENOMEM);

    return 0;
}
