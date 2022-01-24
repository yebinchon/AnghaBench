#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_17__ ;

/* Type definitions */
struct TYPE_30__ {TYPE_3__* out; TYPE_3__* in; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_28__ {int available; } ;
struct TYPE_34__ {int size; int mid; TYPE_17__ q; int /*<<< orphan*/ * planeheight; int /*<<< orphan*/  filter_slice; int /*<<< orphan*/ ** linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  available; } ;
struct TYPE_33__ {TYPE_1__* internal; int /*<<< orphan*/  is_disabled; TYPE_6__* priv; TYPE_4__** outputs; } ;
struct TYPE_32__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_5__* dst; } ;
struct TYPE_31__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_29__ {int /*<<< orphan*/  (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;
typedef  TYPE_6__ ATADenoiseContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_17__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_17__*) ; 
 TYPE_3__* FUNC7 (TYPE_17__*,int) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 TYPE_3__* FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *buf)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ATADenoiseContext *s = ctx->priv;
    AVFrame *out, *in;
    int i;

    if (s->q.available != s->size) {
        if (s->q.available < s->mid) {
            for (i = 0; i < s->mid; i++) {
                out = FUNC2(buf);
                if (!out) {
                    FUNC4(&buf);
                    return FUNC0(ENOMEM);
                }
                FUNC5(ctx, &s->q, out);
            }
        }
        if (s->q.available < s->size) {
            FUNC5(ctx, &s->q, buf);
            s->available++;
        }
        return 0;
    }

    in = FUNC7(&s->q, s->mid);

    if (!ctx->is_disabled) {
        ThreadData td;

        out = FUNC10(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC4(&buf);
            return FUNC0(ENOMEM);
        }

        for (i = 0; i < s->size; i++) {
            AVFrame *frame = FUNC7(&s->q, i);

            s->data[0][i] = frame->data[0];
            s->data[1][i] = frame->data[1];
            s->data[2][i] = frame->data[2];
            s->linesize[0][i] = frame->linesize[0];
            s->linesize[1][i] = frame->linesize[1];
            s->linesize[2][i] = frame->linesize[2];
        }

        td.in = in; td.out = out;
        ctx->internal->execute(ctx, s->filter_slice, &td, NULL,
                               FUNC1(s->planeheight[1],
                                      s->planeheight[2],
                                      FUNC9(ctx)));
        FUNC3(out, in);
    } else {
        out = FUNC2(in);
        if (!out) {
            FUNC4(&buf);
            return FUNC0(ENOMEM);
        }
    }

    in = FUNC6(&s->q);
    FUNC4(&in);
    FUNC5(ctx, &s->q, buf);

    return FUNC8(outlink, out);
}