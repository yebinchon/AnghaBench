#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {scalar_t__ is_disabled; TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_25__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_5__* dst; } ;
struct TYPE_24__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_23__ {scalar_t__ nb_next; scalar_t__ nb_prev; int nb_planes; int planesf; TYPE_3__* cur; TYPE_3__* prev; TYPE_3__* next; TYPE_1__* planes; } ;
struct TYPE_22__ {int /*<<< orphan*/  buffer_linesize; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  planeheight; int /*<<< orphan*/  planewidth; } ;
typedef  TYPE_1__ PlaneContext ;
typedef  TYPE_2__ FFTdnoizContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CURRENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t NEXT ; 
 size_t PREV ; 
 void* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    FFTdnoizContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    int direct, plane;
    AVFrame *out;

    if (s->nb_next > 0 && s->nb_prev > 0) {
        FUNC3(&s->prev);
        s->prev = s->cur;
        s->cur = s->next;
        s->next = in;

        if (!s->prev && s->cur) {
            s->prev = FUNC1(s->cur);
            if (!s->prev)
                return FUNC0(ENOMEM);
        }
        if (!s->cur)
            return 0;
    } else if (s->nb_next > 0) {
        FUNC3(&s->cur);
        s->cur = s->next;
        s->next = in;

        if (!s->cur)
            return 0;
    } else if (s->nb_prev > 0) {
        FUNC3(&s->prev);
        s->prev = s->cur;
        s->cur = in;

        if (!s->prev)
            s->prev = FUNC1(s->cur);
        if (!s->prev)
            return FUNC0(ENOMEM);
    } else {
        s->cur = in;
    }

    if (FUNC4(in) && s->nb_next == 0 && s->nb_prev == 0) {
        direct = 1;
        out = in;
    } else {
        direct = 0;
        out = FUNC8(outlink, outlink->w, outlink->h);
        if (!out)
            return FUNC0(ENOMEM);
        FUNC2(out, s->cur);
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        PlaneContext *p = &s->planes[plane];

        if (!((1 << plane) & s->planesf) || ctx->is_disabled) {
            if (!direct)
                FUNC5(out->data[plane], out->linesize[plane],
                                    s->cur->data[plane], s->cur->linesize[plane],
                                    p->planewidth, p->planeheight);
            continue;
        }

        if (s->next) {
            FUNC12(s, s->next->data[plane], s->next->linesize[plane],
                         p->buffer[NEXT], p->buffer_linesize, plane);
        }

        if (s->prev) {
            FUNC12(s, s->prev->data[plane], s->prev->linesize[plane],
                         p->buffer[PREV], p->buffer_linesize, plane);
        }

        FUNC12(s, s->cur->data[plane], s->cur->linesize[plane],
                     p->buffer[CURRENT], p->buffer_linesize, plane);

        if (s->next && s->prev) {
            FUNC11(s, plane, p->buffer[PREV], p->buffer[NEXT]);
        } else if (s->next) {
            FUNC10(s, plane, p->buffer[NEXT]);
        } else  if (s->prev) {
            FUNC10(s, plane, p->buffer[PREV]);
        } else {
            FUNC9(s, plane);
        }

        FUNC6(s, out->data[plane], out->linesize[plane],
                     p->buffer[CURRENT], p->buffer_linesize, plane);
    }

    if (s->nb_next == 0 && s->nb_prev == 0) {
        if (direct) {
            s->cur = NULL;
        } else {
            FUNC3(&s->cur);
        }
    }
    return FUNC7(outlink, out);
}