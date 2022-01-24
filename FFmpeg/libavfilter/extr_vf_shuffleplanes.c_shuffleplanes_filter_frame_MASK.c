#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  shuffled_linesize ;
typedef  int /*<<< orphan*/  shuffled_data ;
struct TYPE_17__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_16__ {TYPE_4__* dst; } ;
struct TYPE_15__ {int* linesize; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ ** data; } ;
struct TYPE_14__ {int planes; size_t* map; scalar_t__ copy; } ;
typedef  TYPE_1__ ShufflePlanesContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext          *ctx = inlink->dst;
    ShufflePlanesContext       *s = ctx->priv;
    uint8_t *shuffled_data[4]     = { NULL };
    int      shuffled_linesize[4] = { 0 };
    int i, ret;

    for (i = 0; i < s->planes; i++) {
        shuffled_data[i]     = frame->data[s->map[i]];
        shuffled_linesize[i] = frame->linesize[s->map[i]];
    }
    FUNC6(*frame->data,     shuffled_data,     sizeof(shuffled_data));
    FUNC6(frame->linesize, shuffled_linesize, sizeof(shuffled_linesize));

    if (s->copy) {
        AVFrame *copy = FUNC5(ctx->outputs[0], frame->width, frame->height);

        if (!copy) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }

        FUNC1(copy, frame);

        ret = FUNC2(copy, frame);
        if (ret < 0) {
            FUNC3(&copy);
            goto fail;
        }

        FUNC3(&frame);
        frame = copy;
    }

    return FUNC4(ctx->outputs[0], frame);
fail:
    FUNC3(&frame);
    return ret;
}