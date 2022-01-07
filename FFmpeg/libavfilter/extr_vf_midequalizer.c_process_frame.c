
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_22__ {int time_base; int pts; } ;
struct TYPE_21__ {scalar_t__ is_disabled; TYPE_4__** outputs; } ;
struct TYPE_20__ {int time_base; int h; int w; } ;
struct TYPE_19__ {int pts; int * linesize; int * data; } ;
struct TYPE_18__ {TYPE_1__* opaque; TYPE_5__* parent; } ;
struct TYPE_17__ {int nb_planes; int planes; int** width; int histogram_size; TYPE_9__ fs; int cchange; int * histogram; int ** height; int (* midequalizer ) (int ,int ,int ,int ,int ,int ,int,int ,int,int ,int ,int ,int ,int) ;} ;
typedef TYPE_1__ MidEqualizerContext ;
typedef TYPE_2__ FFFrameSync ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_3__* av_frame_clone (TYPE_3__*) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_image_copy_plane (int ,int ,int ,int ,int,int ) ;
 int av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int ff_framesync_get_frame (TYPE_9__*,int,TYPE_3__**,int ) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int ,int ) ;
 int stub1 (int ,int ,int ,int ,int ,int ,int,int ,int,int ,int ,int ,int ,int) ;

__attribute__((used)) static int process_frame(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    MidEqualizerContext *s = fs->opaque;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out, *in0, *in1;
    int ret;

    if ((ret = ff_framesync_get_frame(&s->fs, 0, &in0, 0)) < 0 ||
        (ret = ff_framesync_get_frame(&s->fs, 1, &in1, 0)) < 0)
        return ret;

    if (ctx->is_disabled) {
        out = av_frame_clone(in0);
        if (!out)
            return AVERROR(ENOMEM);
    } else {
        int p;

        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out)
            return AVERROR(ENOMEM);
        av_frame_copy_props(out, in0);

        for (p = 0; p < s->nb_planes; p++) {
            if (!((1 << p) & s->planes)) {
                av_image_copy_plane(out->data[p], out->linesize[p], in0->data[p], in0->linesize[p],
                                    s->width[0][p] * (1 + (s->histogram_size > 256)), s->height[0][p]);
                continue;
            }

            s->midequalizer(in0->data[p], in1->data[p],
                            out->data[p],
                            in0->linesize[p], in1->linesize[p],
                            out->linesize[p],
                            s->width[0][p], s->height[0][p],
                            s->width[1][p], s->height[1][p],
                            s->histogram[0], s->histogram[1],
                            s->cchange, s->histogram_size);
        }
    }
    out->pts = av_rescale_q(s->fs.pts, s->fs.time_base, outlink->time_base);

    return ff_filter_frame(outlink, out);
}
