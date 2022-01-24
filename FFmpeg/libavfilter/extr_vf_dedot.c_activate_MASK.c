#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_21__ {int plane; int /*<<< orphan*/  pts; struct TYPE_21__* out; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_23__ {TYPE_1__* internal; int /*<<< orphan*/  is_disabled; TYPE_3__* priv; int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_22__ {int eof; int eof_frames; int m; TYPE_2__** frames; int /*<<< orphan*/ * planeheight; int /*<<< orphan*/  derainbow; int /*<<< orphan*/  dedotcrawl; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ DedotContext ;
typedef  TYPE_2__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    DedotContext *s = ctx->priv;
    AVFrame *frame = NULL;
    int64_t pts;
    int status;
    int ret = 0;

    FUNC2(outlink, inlink);

    if (s->eof == 0) {
        ret = FUNC11(inlink, &frame);
        if (ret < 0)
            return ret;
    }
    if (frame || s->eof_frames > 0) {
        AVFrame *out = NULL;

        if (frame) {
            for (int i = 2; i < 5; i++) {
                if (!s->frames[i])
                    s->frames[i] = FUNC4(frame);
            }
            FUNC5(&frame);
        } else if (s->frames[3]) {
            s->eof_frames--;
            s->frames[4] = FUNC4(s->frames[3]);
        }

        if (s->frames[0] &&
            s->frames[1] &&
            s->frames[2] &&
            s->frames[3] &&
            s->frames[4]) {
            out = FUNC4(s->frames[2]);
            if (out && !ctx->is_disabled) {
                ret = FUNC6(out);
                if (ret >= 0) {
                    if (s->m & 1)
                        ctx->internal->execute(ctx, s->dedotcrawl, out, NULL,
                                               FUNC1(s->planeheight[0],
                                               FUNC8(ctx)));
                    if (s->m & 2) {
                        ThreadData td;
                        td.out = out; td.plane = 1;
                        ctx->internal->execute(ctx, s->derainbow, &td, NULL,
                                               FUNC1(s->planeheight[1],
                                               FUNC8(ctx)));
                        td.plane = 2;
                        ctx->internal->execute(ctx, s->derainbow, &td, NULL,
                                               FUNC1(s->planeheight[2],
                                               FUNC8(ctx)));
                    }
                }
            } else if (!out) {
                ret = FUNC0(ENOMEM);
            }
        }

        FUNC5(&s->frames[0]);
        s->frames[0] = s->frames[1];
        s->frames[1] = s->frames[2];
        s->frames[2] = s->frames[3];
        s->frames[3] = s->frames[4];
        s->frames[4] = NULL;

        if (ret < 0)
            return ret;
        if (out)
            return FUNC7(outlink, out);
    }

    if (s->eof) {
        if (s->eof_frames <= 0) {
            FUNC12(outlink, AVERROR_EOF, s->frames[2]->pts);
        } else {
            FUNC9(ctx, 10);
        }
        return 0;
    }

    if (!s->eof && FUNC10(inlink, &status, &pts)) {
        if (status == AVERROR_EOF) {
            s->eof = 1;
            s->eof_frames = !!s->frames[0] + !!s->frames[1];
            if (s->eof_frames <= 0) {
                FUNC12(outlink, AVERROR_EOF, pts);
                return 0;
            }
            FUNC9(ctx, 10);
            return 0;
        }
    }

    FUNC3(outlink, inlink);

    return FFERROR_NOT_READY;
}