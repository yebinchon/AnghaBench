#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_18__ {scalar_t__* data; scalar_t__* linesize; } ;
struct TYPE_17__ {int radius; int chroma_w; int chroma_h; int chroma_r; } ;
struct TYPE_16__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ GradFunContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,scalar_t__,int,int,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *in)
{
    GradFunContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out;
    int p, direct;

    if (FUNC4(in)) {
        direct = 1;
        out = in;
    } else {
        direct = 0;
        out = FUNC7(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC3(&in);
            return FUNC0(ENOMEM);
        }
        FUNC2(out, in);
    }

    for (p = 0; p < 4 && in->data[p] && in->linesize[p]; p++) {
        int w = inlink->w;
        int h = inlink->h;
        int r = s->radius;
        if (p) {
            w = s->chroma_w;
            h = s->chroma_h;
            r = s->chroma_r;
        }

        if (FUNC1(w, h) > 2 * r)
            FUNC8(s, out->data[p], in->data[p], w, h, out->linesize[p], in->linesize[p], r);
        else if (out->data[p] != in->data[p])
            FUNC5(out->data[p], out->linesize[p], in->data[p], in->linesize[p], w, h);
    }

    if (!direct)
        FUNC3(&in);

    return FUNC6(outlink, out);
}