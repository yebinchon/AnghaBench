#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_27__ {TYPE_1__* priv; TYPE_3__** outputs; TYPE_3__** inputs; } ;
struct TYPE_26__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  frame_rate; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_25__ {scalar_t__ pts; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; } ;
struct TYPE_24__ {int start_mode; scalar_t__ pad_start; int eof; int stop_mode; scalar_t__ pad_stop; scalar_t__ pts; TYPE_2__* cache_stop; int /*<<< orphan*/  color; int /*<<< orphan*/  draw; TYPE_2__* cache_start; } ;
typedef  TYPE_1__ TPadContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 void* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int*,scalar_t__*) ; 
 int FUNC11 (TYPE_3__*,TYPE_2__**) ; 
 TYPE_2__* FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC16(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    TPadContext *s = ctx->priv;
    AVFrame *frame = NULL;
    int ret, status;
    int64_t pts;

    FUNC1(outlink, inlink);

    if (s->start_mode == 0 && s->pad_start > 0 && FUNC14(outlink)) {
        frame = FUNC9(outlink, outlink->w, outlink->h);
        if (!frame)
            return FUNC0(ENOMEM);
        FUNC7(&s->draw, &s->color,
                          frame->data, frame->linesize,
                          0, 0, frame->width, frame->height);
        frame->pts = s->pts;
        s->pts += FUNC6(1, FUNC5(outlink->frame_rate), outlink->time_base);
        s->pad_start--;
        return FUNC8(outlink, frame);
    }

    if (s->start_mode == 1 && s->pad_start > 0) {
        if (!s->cache_start && FUNC13(inlink)) {
            s->cache_start = FUNC12(inlink, 0);
        } else if (!s->cache_start) {
            FUNC2(outlink, inlink);
        }
        frame = FUNC3(s->cache_start);
        if (!frame)
            return FUNC0(ENOMEM);
        frame->pts = s->pts;
        s->pts += FUNC6(1, FUNC5(outlink->frame_rate), outlink->time_base);
        s->pad_start--;
        if (s->pad_start == 0)
            s->cache_start = NULL;
        return FUNC8(outlink, frame);
    }

    if (!s->eof && !s->pad_start) {
        ret = FUNC11(inlink, &frame);
        if (ret < 0)
            return ret;
        if (ret > 0) {
            if (s->stop_mode == 1 && s->pad_stop != 0) {
                FUNC4(&s->cache_stop);
                s->cache_stop = FUNC3(frame);
            }
            frame->pts += s->pts;
            return FUNC8(outlink, frame);
        }
    }

    if (!s->eof && FUNC10(inlink, &status, &pts)) {
        if (status == AVERROR_EOF) {
            if (!s->pad_stop) {
                FUNC15(outlink, status, pts);
                return 0;
            }
            s->eof = 1;
            s->pts += pts;
        }
    }

    if (s->eof) {
        if (!s->pad_stop) {
            FUNC15(outlink, AVERROR_EOF, s->pts);
            return 0;
        }
        if (s->stop_mode == 0) {
            frame = FUNC9(outlink, outlink->w, outlink->h);
            if (!frame)
                return FUNC0(ENOMEM);
            FUNC7(&s->draw, &s->color,
                              frame->data, frame->linesize,
                              0, 0, frame->width, frame->height);
        } else if (s->stop_mode == 1) {
            frame = FUNC3(s->cache_stop);
            if (!frame)
                return FUNC0(ENOMEM);
        }
        frame->pts = s->pts;
        s->pts += FUNC6(1, FUNC5(outlink->frame_rate), outlink->time_base);
        if (s->pad_stop > 0)
            s->pad_stop--;
        return FUNC8(outlink, frame);
    }

    if (!s->pad_start)
        FUNC2(outlink, inlink);

    return FFERROR_NOT_READY;
}