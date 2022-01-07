
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_23__ {scalar_t__ is_disabled; TYPE_4__** outputs; } ;
struct TYPE_22__ {int time_base; int h; int w; } ;
struct TYPE_21__ {int* linesize; int pts; scalar_t__* data; } ;
struct TYPE_20__ {TYPE_1__* opaque; TYPE_5__* parent; } ;
struct TYPE_18__ {int time_base; int pts; } ;
struct TYPE_19__ {int nb_planes; int planes; int* width; int* height; int index; TYPE_10__ fs; int (* hysteresis ) (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int) ;scalar_t__ xy; scalar_t__ map; } ;
typedef TYPE_1__ HysteresisContext ;
typedef TYPE_2__ FFFrameSync ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_3__* av_frame_clone (TYPE_3__*) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_image_copy_plane (scalar_t__,int,scalar_t__,int,int,int) ;
 int av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int ff_framesync_get_frame (TYPE_10__*,int,TYPE_3__**,int ) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int ,int ) ;
 int memset (scalar_t__,int ,int) ;
 int stub1 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int) ;

__attribute__((used)) static int process_frame(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    HysteresisContext *s = fs->opaque;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out, *base, *alt;
    int ret;

    if ((ret = ff_framesync_get_frame(&s->fs, 0, &base, 0)) < 0 ||
        (ret = ff_framesync_get_frame(&s->fs, 1, &alt, 0)) < 0)
        return ret;

    if (ctx->is_disabled) {
        out = av_frame_clone(base);
        if (!out)
            return AVERROR(ENOMEM);
    } else {
        int p;

        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out)
            return AVERROR(ENOMEM);
        av_frame_copy_props(out, base);

        for (p = 0; p < s->nb_planes; p++) {
            if (!((1 << p) & s->planes)) {
                av_image_copy_plane(out->data[p], out->linesize[p], base->data[p], base->linesize[p],
                                    s->width[p], s->height[p]);
                continue;
            } else {
                int y;

                for (y = 0; y < s->height[p]; y++) {
                    memset(out->data[p] + y * out->linesize[p], 0, s->width[p]);
                }
            }

            s->index = -1;
            memset(s->map, 0, s->width[0] * s->height[0]);
            memset(s->xy, 0, s->width[0] * s->height[0] * 4);

            s->hysteresis(s, base->data[p], alt->data[p],
                          out->data[p],
                          base->linesize[p], alt->linesize[p],
                          out->linesize[p],
                          s->width[p], s->height[p]);
        }
    }
    out->pts = av_rescale_q(s->fs.pts, s->fs.time_base, outlink->time_base);

    return ff_filter_frame(outlink, out);
}
