
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct ColorSystem {int dummy; } ;
struct TYPE_10__ {int* linesize; scalar_t__* data; } ;
struct TYPE_9__ {TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_8__ {int h; int w; } ;
struct TYPE_7__ {size_t color_system; int size; int contrast; int correct_gamma; int cie; scalar_t__ i; TYPE_4__* f; } ;
typedef TYPE_1__ CiescopeContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 struct ColorSystem* color_systems ;
 TYPE_4__* ff_get_video_buffer (TYPE_2__*,int ,int ) ;
 int fill_in_tongue (int *,int,int,int,int,struct ColorSystem const*,double const**,int ,int ,int ) ;
 int tongue_outline (int *,int,int,int,int,int ) ;

__attribute__((used)) static int draw_background(AVFilterContext *ctx)
{
    CiescopeContext *s = ctx->priv;
    const struct ColorSystem *cs = &color_systems[s->color_system];
    AVFilterLink *outlink = ctx->outputs[0];
    int w = s->size;
    int h = s->size;
    uint16_t *pixels;

    if ((s->f = ff_get_video_buffer(outlink, outlink->w, outlink->h)) == ((void*)0))
        return AVERROR(ENOMEM);
    pixels = (uint16_t *)s->f->data[0];

    tongue_outline(pixels, s->f->linesize[0] / 2, w, h, 65535, s->cie);

    fill_in_tongue(pixels, s->f->linesize[0] / 2, w, h, 65535, cs, (const double (*)[3])s->i, s->cie,
                   s->correct_gamma, s->contrast);

    return 0;
}
