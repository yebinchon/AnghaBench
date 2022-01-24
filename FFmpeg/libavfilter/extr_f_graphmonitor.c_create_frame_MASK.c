#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_30__ {char* name; int nb_inputs; int nb_outputs; TYPE_7__** outputs; TYPE_7__** inputs; TYPE_2__* filter; TYPE_1__* graph; TYPE_5__* priv; } ;
struct TYPE_29__ {TYPE_4__* dst; TYPE_3__* src; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_28__ {void* pts; } ;
struct TYPE_27__ {void* pts; int /*<<< orphan*/  white; scalar_t__ mode; } ;
struct TYPE_26__ {char* name; } ;
struct TYPE_25__ {char* name; } ;
struct TYPE_24__ {char* name; } ;
struct TYPE_23__ {int nb_filters; TYPE_8__** filters; } ;
typedef  TYPE_5__ GraphMonitorContext ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVFilterLink ;
typedef  TYPE_8__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_6__*,int,int,TYPE_7__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_7__*,TYPE_6__*) ; 
 TYPE_6__* FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx, int64_t pts)
{
    GraphMonitorContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    int xpos, ypos = 0;

    out = FUNC5(outlink, outlink->w, outlink->h);
    if (!out)
        return FUNC0(ENOMEM);

    FUNC1(s, out, outlink);

    for (int i = 0; i < ctx->graph->nb_filters; i++) {
        AVFilterContext *filter = ctx->graph->filters[i];
        char buffer[1024] = { 0 };

        if (s->mode && !FUNC7(filter))
            continue;

        xpos = 0;
        FUNC3(out, xpos, ypos, filter->name, s->white);
        xpos += FUNC9(filter->name) * 8 + 10;
        FUNC3(out, xpos, ypos, filter->filter->name, s->white);
        ypos += 10;
        for (int j = 0; j < filter->nb_inputs; j++) {
            AVFilterLink *l = filter->inputs[j];
            size_t frames = FUNC6(l);

            if (s->mode && !frames)
                continue;

            xpos = 10;
            FUNC8(buffer, sizeof(buffer)-1, "in%d: ", j);
            FUNC3(out, xpos, ypos, buffer, s->white);
            xpos += FUNC9(buffer) * 8;
            FUNC3(out, xpos, ypos, l->src->name, s->white);
            xpos += FUNC9(l->src->name) * 8 + 10;
            FUNC2(ctx, out, xpos, ypos, l, frames);
            ypos += 10;
        }

        ypos += 2;
        for (int j = 0; j < filter->nb_outputs; j++) {
            AVFilterLink *l = filter->outputs[j];
            size_t frames = FUNC6(l);

            if (s->mode && !frames)
                continue;

            xpos = 10;
            FUNC8(buffer, sizeof(buffer)-1, "out%d: ", j);
            FUNC3(out, xpos, ypos, buffer, s->white);
            xpos += FUNC9(buffer) * 8;
            FUNC3(out, xpos, ypos, l->dst->name, s->white);
            xpos += FUNC9(l->dst->name) * 8 + 10;
            FUNC2(ctx, out, xpos, ypos, l, frames);
            ypos += 10;
        }
        ypos += 5;
    }

    out->pts = pts;
    s->pts = pts;
    return FUNC4(outlink, out);
}