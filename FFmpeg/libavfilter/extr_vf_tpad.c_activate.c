
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_27__ {TYPE_1__* priv; TYPE_3__** outputs; TYPE_3__** inputs; } ;
struct TYPE_26__ {int time_base; int frame_rate; int h; int w; } ;
struct TYPE_25__ {scalar_t__ pts; int height; int width; int linesize; int data; } ;
struct TYPE_24__ {int start_mode; scalar_t__ pad_start; int eof; int stop_mode; scalar_t__ pad_stop; scalar_t__ pts; TYPE_2__* cache_stop; int color; int draw; TYPE_2__* cache_start; } ;
typedef TYPE_1__ TPadContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS_BACK (TYPE_3__*,TYPE_3__*) ;
 int FF_FILTER_FORWARD_WANTED (TYPE_3__*,TYPE_3__*) ;
 void* av_frame_clone (TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int av_inv_q (int ) ;
 scalar_t__ av_rescale_q (int,int ,int ) ;
 int ff_fill_rectangle (int *,int *,int ,int ,int ,int ,int ,int ) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_video_buffer (TYPE_3__*,int ,int ) ;
 scalar_t__ ff_inlink_acknowledge_status (TYPE_3__*,int*,scalar_t__*) ;
 int ff_inlink_consume_frame (TYPE_3__*,TYPE_2__**) ;
 TYPE_2__* ff_inlink_peek_frame (TYPE_3__*,int ) ;
 scalar_t__ ff_inlink_queued_frames (TYPE_3__*) ;
 scalar_t__ ff_outlink_frame_wanted (TYPE_3__*) ;
 int ff_outlink_set_status (TYPE_3__*,int,scalar_t__) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    TPadContext *s = ctx->priv;
    AVFrame *frame = ((void*)0);
    int ret, status;
    int64_t pts;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    if (s->start_mode == 0 && s->pad_start > 0 && ff_outlink_frame_wanted(outlink)) {
        frame = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!frame)
            return AVERROR(ENOMEM);
        ff_fill_rectangle(&s->draw, &s->color,
                          frame->data, frame->linesize,
                          0, 0, frame->width, frame->height);
        frame->pts = s->pts;
        s->pts += av_rescale_q(1, av_inv_q(outlink->frame_rate), outlink->time_base);
        s->pad_start--;
        return ff_filter_frame(outlink, frame);
    }

    if (s->start_mode == 1 && s->pad_start > 0) {
        if (!s->cache_start && ff_inlink_queued_frames(inlink)) {
            s->cache_start = ff_inlink_peek_frame(inlink, 0);
        } else if (!s->cache_start) {
            FF_FILTER_FORWARD_WANTED(outlink, inlink);
        }
        frame = av_frame_clone(s->cache_start);
        if (!frame)
            return AVERROR(ENOMEM);
        frame->pts = s->pts;
        s->pts += av_rescale_q(1, av_inv_q(outlink->frame_rate), outlink->time_base);
        s->pad_start--;
        if (s->pad_start == 0)
            s->cache_start = ((void*)0);
        return ff_filter_frame(outlink, frame);
    }

    if (!s->eof && !s->pad_start) {
        ret = ff_inlink_consume_frame(inlink, &frame);
        if (ret < 0)
            return ret;
        if (ret > 0) {
            if (s->stop_mode == 1 && s->pad_stop != 0) {
                av_frame_free(&s->cache_stop);
                s->cache_stop = av_frame_clone(frame);
            }
            frame->pts += s->pts;
            return ff_filter_frame(outlink, frame);
        }
    }

    if (!s->eof && ff_inlink_acknowledge_status(inlink, &status, &pts)) {
        if (status == AVERROR_EOF) {
            if (!s->pad_stop) {
                ff_outlink_set_status(outlink, status, pts);
                return 0;
            }
            s->eof = 1;
            s->pts += pts;
        }
    }

    if (s->eof) {
        if (!s->pad_stop) {
            ff_outlink_set_status(outlink, AVERROR_EOF, s->pts);
            return 0;
        }
        if (s->stop_mode == 0) {
            frame = ff_get_video_buffer(outlink, outlink->w, outlink->h);
            if (!frame)
                return AVERROR(ENOMEM);
            ff_fill_rectangle(&s->draw, &s->color,
                              frame->data, frame->linesize,
                              0, 0, frame->width, frame->height);
        } else if (s->stop_mode == 1) {
            frame = av_frame_clone(s->cache_stop);
            if (!frame)
                return AVERROR(ENOMEM);
        }
        frame->pts = s->pts;
        s->pts += av_rescale_q(1, av_inv_q(outlink->frame_rate), outlink->time_base);
        if (s->pad_stop > 0)
            s->pad_stop--;
        return ff_filter_frame(outlink, frame);
    }

    if (!s->pad_start)
        FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
