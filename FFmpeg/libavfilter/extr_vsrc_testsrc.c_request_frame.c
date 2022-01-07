
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ duration; int nb_frame; int pts; int (* fill_picture_fn ) (TYPE_4__*,TYPE_2__*) ;scalar_t__ draw_once; int sar; int h; int w; TYPE_2__* picref; scalar_t__ draw_once_reset; int time_base; } ;
typedef TYPE_1__ TestSourceContext ;
struct TYPE_18__ {TYPE_1__* priv; } ;
struct TYPE_17__ {TYPE_4__* src; } ;
struct TYPE_16__ {int key_frame; int sample_aspect_ratio; int pict_type; scalar_t__ interlaced_frame; int pts; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_PICTURE_TYPE_I ;
 int AV_TIME_BASE_Q ;
 int ENOMEM ;
 TYPE_2__* av_frame_clone (TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 scalar_t__ av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 void* ff_get_video_buffer (TYPE_3__*,int ,int ) ;
 int stub1 (TYPE_4__*,TYPE_2__*) ;
 int stub2 (TYPE_4__*,TYPE_2__*) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    TestSourceContext *test = outlink->src->priv;
    AVFrame *frame;

    if (test->duration >= 0 &&
        av_rescale_q(test->pts, test->time_base, AV_TIME_BASE_Q) >= test->duration)
        return AVERROR_EOF;

    if (test->draw_once) {
        if (test->draw_once_reset) {
            av_frame_free(&test->picref);
            test->draw_once_reset = 0;
        }
        if (!test->picref) {
            test->picref =
                ff_get_video_buffer(outlink, test->w, test->h);
            if (!test->picref)
                return AVERROR(ENOMEM);
            test->fill_picture_fn(outlink->src, test->picref);
        }
        frame = av_frame_clone(test->picref);
    } else
        frame = ff_get_video_buffer(outlink, test->w, test->h);

    if (!frame)
        return AVERROR(ENOMEM);
    frame->pts = test->pts;
    frame->key_frame = 1;
    frame->interlaced_frame = 0;
    frame->pict_type = AV_PICTURE_TYPE_I;
    frame->sample_aspect_ratio = test->sar;
    if (!test->draw_once)
        test->fill_picture_fn(outlink->src, frame);

    test->pts++;
    test->nb_frame++;

    return ff_filter_frame(outlink, frame);
}
