
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_18__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_17__ {int h; int w; TYPE_4__* dst; } ;
struct TYPE_16__ {int const* linesize; scalar_t__* data; } ;
struct TYPE_15__ {int block; int nb_planes; int* planewidth; int* planeheight; int const bpc; int planes; int max; int dth; int gth; int bth; int ath; int (* deblockv ) (int *,int const,int ,int ,int ,int ,int ,int ) ;int (* deblockh ) (int *,int const,int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_1__ DeblockContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int const,int const) ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 scalar_t__ av_frame_is_writable (TYPE_2__*) ;
 int av_image_copy_plane (int *,int const,int const*,int const,int const,int const) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_video_buffer (TYPE_3__*,int ,int ) ;
 int stub1 (int *,int const,int ,int ,int ,int ,int ,int ) ;
 int stub2 (int *,int const,int ,int ,int ,int ,int ,int ) ;
 int stub3 (int *,int const,int ,int ,int ,int ,int ,int ) ;
 int stub4 (int *,int const,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    DeblockContext *s = ctx->priv;
    const int block = s->block;
    AVFrame *out;
    int plane, x, y;

    if (av_frame_is_writable(in)) {
        out = in;
    } else {
        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(out, in);
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        const int width = s->planewidth[plane];
        const int height = s->planeheight[plane];
        const uint8_t *src = (const uint8_t *)in->data[plane];
        uint8_t *dst = (uint8_t *)out->data[plane];

        if (in != out)
            av_image_copy_plane(dst, out->linesize[plane],
                                src, in->linesize[plane],
                                width * s->bpc, height);

        if (!((1 << plane) & s->planes))
            continue;

        for (x = block; x < width; x += block)
            s->deblockv(dst + x * s->bpc, out->linesize[plane],
                        FFMIN(block, height), s->ath, s->bth, s->gth, s->dth, s->max);

        for (y = block; y < height; y += block) {
            dst += out->linesize[plane] * block;

            s->deblockh(dst, out->linesize[plane],
                        FFMIN(block, width),
                        s->ath, s->bth, s->gth, s->dth, s->max);

            for (x = block; x < width; x += block) {
                s->deblockh(dst + x * s->bpc, out->linesize[plane],
                            FFMIN(block, width - x),
                            s->ath, s->bth, s->gth, s->dth, s->max);
                s->deblockv(dst + x * s->bpc, out->linesize[plane],
                            FFMIN(block, height - y),
                            s->ath, s->bth, s->gth, s->dth, s->max);
            }
        }
    }

    if (in != out)
        av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
