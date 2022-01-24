#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_16__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_32__ {scalar_t__ format; TYPE_20__* dst; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_1__ sample_aspect_ratio; } ;
struct TYPE_29__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_31__ {int width; scalar_t__ height; scalar_t__ format; int* linesize; scalar_t__* data; TYPE_4__ sample_aspect_ratio; } ;
struct TYPE_24__ {int* hsub; int* vsub; int* pixelstep; } ;
struct TYPE_30__ {scalar_t__ eval_mode; int inlink_w; scalar_t__ inlink_h; scalar_t__ w; scalar_t__ h; int x; int y; scalar_t__ in_h; scalar_t__ in_w; int /*<<< orphan*/  color; TYPE_16__ draw; } ;
struct TYPE_27__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_28__ {scalar_t__ format; int w; scalar_t__ h; TYPE_2__ sample_aspect_ratio; } ;
struct TYPE_26__ {TYPE_7__** outputs; TYPE_3__** inputs; TYPE_5__* priv; } ;
typedef  TYPE_5__ PadContext ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ EVAL_MODE_FRAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_20__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_7__*) ; 
 int FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_16__*,scalar_t__*,int*,scalar_t__*,int*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_16__*,int /*<<< orphan*/ *,scalar_t__*,int*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC9 (TYPE_7__*,TYPE_6__*) ; 
 TYPE_6__* FUNC10 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_5__*,TYPE_6__*) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *in)
{
    PadContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out;
    int needs_copy;
    if(s->eval_mode == EVAL_MODE_FRAME && (
           in->width  != s->inlink_w
        || in->height != s->inlink_h
        || in->format != outlink->format
        || in->sample_aspect_ratio.den != outlink->sample_aspect_ratio.den || in->sample_aspect_ratio.num != outlink->sample_aspect_ratio.num)) {
        int ret;

        inlink->dst->inputs[0]->format = in->format;
        inlink->dst->inputs[0]->w      = in->width;
        inlink->dst->inputs[0]->h      = in->height;

        inlink->dst->inputs[0]->sample_aspect_ratio.den = in->sample_aspect_ratio.den;
        inlink->dst->inputs[0]->sample_aspect_ratio.num = in->sample_aspect_ratio.num;


        if ((ret = FUNC5(inlink)) < 0) {
            s->inlink_w = -1;
            return ret;
        }
        if ((ret = FUNC6(outlink)) < 0) {
            s->inlink_w = -1;
            return ret;
        }
    }

    needs_copy = FUNC11(s, in);

    if (needs_copy) {
        FUNC4(inlink->dst, AV_LOG_DEBUG, "Direct padding impossible allocating new frame\n");
        out = FUNC10(inlink->dst->outputs[0],
                                  FUNC1(inlink->w, s->w),
                                  FUNC1(inlink->h, s->h));
        if (!out) {
            FUNC3(&in);
            return FUNC0(ENOMEM);
        }

        FUNC2(out, in);
    } else {
        int i;

        out = in;
        for (i = 0; i < 4 && out->data[i] && out->linesize[i]; i++) {
            int hsub = s->draw.hsub[i];
            int vsub = s->draw.vsub[i];
            out->data[i] -= (s->x >> hsub) * s->draw.pixelstep[i] +
                            (s->y >> vsub) * out->linesize[i];
        }
    }

    /* top bar */
    if (s->y) {
        FUNC8(&s->draw, &s->color,
                          out->data, out->linesize,
                          0, 0, s->w, s->y);
    }

    /* bottom bar */
    if (s->h > s->y + s->in_h) {
        FUNC8(&s->draw, &s->color,
                          out->data, out->linesize,
                          0, s->y + s->in_h, s->w, s->h - s->y - s->in_h);
    }

    /* left border */
    FUNC8(&s->draw, &s->color, out->data, out->linesize,
                      0, s->y, s->x, in->height);

    if (needs_copy) {
        FUNC7(&s->draw,
                          out->data, out->linesize, in->data, in->linesize,
                          s->x, s->y, 0, 0, in->width, in->height);
    }

    /* right border */
    FUNC8(&s->draw, &s->color, out->data, out->linesize,
                      s->x + s->in_w, s->y, s->w - s->x - s->in_w,
                      in->height);

    out->width  = s->w;
    out->height = s->h;

    if (in != out)
        FUNC3(&in);
    return FUNC9(inlink->dst->outputs[0], out);
}