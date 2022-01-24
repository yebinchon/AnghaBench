#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_34__ {TYPE_3__* priv; TYPE_6__** outputs; } ;
struct TYPE_33__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_7__* dst; } ;
struct TYPE_32__ {int /*<<< orphan*/  linesize; scalar_t__ data; scalar_t__ repeat_pict; int /*<<< orphan*/  top_field_first; scalar_t__ interlaced_frame; } ;
struct TYPE_31__ {scalar_t__ planes; } ;
struct TYPE_30__ {int /*<<< orphan*/  planewidth; } ;
struct TYPE_29__ {int length; TYPE_1__* buffer; } ;
struct TYPE_28__ {scalar_t__ planes; } ;
typedef  TYPE_2__ PullupFrame ;
typedef  TYPE_3__ PullupContext ;
typedef  TYPE_4__ PullupBuffer ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 TYPE_5__* FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC13(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    PullupContext *s = ctx->priv;
    PullupBuffer *b;
    PullupFrame *f;
    AVFrame *out;
    int p, ret = 0;

    b = FUNC7(s, 2);
    if (!b) {
        FUNC4(ctx, AV_LOG_WARNING, "Could not get buffer!\n");
        f = FUNC8(s);
        FUNC11(f);
        goto end;
    }

    FUNC3(b->planes, s->planewidth,
                  (const uint8_t**)in->data, in->linesize,
                  inlink->format, inlink->w, inlink->h);

    p = in->interlaced_frame ? !in->top_field_first : 0;
    FUNC12(s, b, p  );
    FUNC12(s, b, p^1);

    if (in->repeat_pict)
        FUNC12(s, b, p);

    FUNC10(b, 2);

    f = FUNC8(s);
    if (!f)
        goto end;

    if (f->length < 2) {
        FUNC11(f);
        f = FUNC8(s);
        if (!f)
            goto end;
        if (f->length < 2) {
            FUNC11(f);
            if (!in->repeat_pict)
                goto end;
            f = FUNC8(s);
            if (!f)
                goto end;
            if (f->length < 2) {
                FUNC11(f);
                goto end;
            }
        }
    }

    /* If the frame isn't already exportable... */
    if (!f->buffer)
        FUNC9(s, f);

    out = FUNC6(outlink, outlink->w, outlink->h);
    if (!out) {
        ret = FUNC0(ENOMEM);
        goto end;
    }
    FUNC1(out, in);

    FUNC3(out->data, out->linesize,
                  (const uint8_t**)f->buffer->planes, s->planewidth,
                  inlink->format, inlink->w, inlink->h);

    ret = FUNC5(outlink, out);
    FUNC11(f);
end:
    FUNC2(&in);
    return ret;
}