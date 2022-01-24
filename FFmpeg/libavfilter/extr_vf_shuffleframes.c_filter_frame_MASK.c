#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_13__ {TYPE_4__* dst; } ;
struct TYPE_12__ {int /*<<< orphan*/  pts; } ;
struct TYPE_11__ {size_t in_frames; size_t nb_frames; int* map; TYPE_2__** frames; int /*<<< orphan*/ * pts; } ;
typedef  TYPE_1__ ShuffleFramesContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext    *ctx = inlink->dst;
    ShuffleFramesContext *s = ctx->priv;
    int ret = 0;

    if (s->in_frames < s->nb_frames) {
        s->frames[s->in_frames] = frame;
        s->pts[s->in_frames] = frame->pts;
        s->in_frames++;
    }

    if (s->in_frames == s->nb_frames) {
        int n, x;

        for (n = 0; n < s->nb_frames; n++) {
            AVFrame *out;

            x = s->map[n];
            if (x >= 0) {
                out = FUNC1(s->frames[x]);
                if (!out)
                    return FUNC0(ENOMEM);
                out->pts = s->pts[n];
                ret = FUNC3(ctx->outputs[0], out);
            }
            s->in_frames--;
        }

        for (n = 0; n < s->nb_frames; n++)
            FUNC2(&s->frames[n]);
    }

    return ret;
}