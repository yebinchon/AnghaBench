
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int format; int height; int width; int linesize; int data; } ;
struct TYPE_14__ {TYPE_2__* axis_frame; int format; int axis_h; int width; int ctx; int font; int fontfile; } ;
typedef TYPE_1__ ShowCQTContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_RGBA ;
 int ENOMEM ;
 TYPE_2__* alloc_frame_empty (int ,int,int) ;
 TYPE_2__* av_frame_alloc () ;
 int av_frame_free (TYPE_2__**) ;
 int convert_axis_pixel_format (int ) ;
 int ff_scale_image (int ,int ,int ,int ,int ,int ,int ,int,int,int ,int ) ;
 int init_axis_color (TYPE_1__*,TYPE_2__*,int) ;
 int render_default_font (TYPE_2__*) ;
 scalar_t__ render_fontconfig (TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ render_freetype (TYPE_1__*,TYPE_2__*,int ) ;

__attribute__((used)) static int init_axis_from_font(ShowCQTContext *s)
{
    AVFrame *tmp = ((void*)0);
    int ret = AVERROR(ENOMEM);
    int width = 1920, height = 32;
    int default_font = 0;

    if (!(tmp = alloc_frame_empty(AV_PIX_FMT_RGBA, width, height)))
        goto fail;

    if (!(s->axis_frame = av_frame_alloc()))
        goto fail;

    if (render_freetype(s, tmp, s->fontfile) < 0 &&
        render_fontconfig(s, tmp, s->font) < 0 &&
        (default_font = 1, ret = render_default_font(tmp)) < 0)
        goto fail;

    if (default_font)
        width /= 2, height /= 2;

    if ((ret = init_axis_color(s, tmp, default_font)) < 0)
        goto fail;

    if ((ret = ff_scale_image(s->axis_frame->data, s->axis_frame->linesize, s->width, s->axis_h,
                              convert_axis_pixel_format(s->format), tmp->data, tmp->linesize,
                              width, height, AV_PIX_FMT_RGBA, s->ctx)) < 0)
        goto fail;

    av_frame_free(&tmp);
    s->axis_frame->width = s->width;
    s->axis_frame->height = s->axis_h;
    s->axis_frame->format = convert_axis_pixel_format(s->format);
    return 0;

fail:
    av_frame_free(&tmp);
    av_frame_free(&s->axis_frame);
    return ret;
}
