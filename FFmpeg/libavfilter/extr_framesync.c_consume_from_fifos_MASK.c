#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_9__ {int /*<<< orphan*/ * inputs; int /*<<< orphan*/ * outputs; } ;
struct TYPE_8__ {unsigned int nb_in; TYPE_1__* in; TYPE_3__* parent; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ have_next; } ;
typedef  TYPE_2__ FFFrameSync ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FFERROR_NOT_READY ; 
 scalar_t__ STATE_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFrame *frame = NULL;
    int64_t pts;
    unsigned i, nb_active, nb_miss;
    int ret, status;

    nb_active = nb_miss = 0;
    for (i = 0; i < fs->nb_in; i++) {
        if (fs->in[i].have_next || fs->in[i].state == STATE_EOF)
            continue;
        nb_active++;
        ret = FUNC2(ctx->inputs[i], &frame);
        if (ret < 0)
            return ret;
        if (ret) {
            FUNC0(frame);
            FUNC5(fs, i, frame);
        } else {
            ret = FUNC1(ctx->inputs[i], &status, &pts);
            if (ret > 0) {
                FUNC6(fs, i, status, pts);
            } else if (!ret) {
                nb_miss++;
            }
        }
    }
    if (nb_miss) {
        if (nb_miss == nb_active && !FUNC4(ctx->outputs[0]))
            return FFERROR_NOT_READY;
        for (i = 0; i < fs->nb_in; i++)
            if (!fs->in[i].have_next && fs->in[i].state != STATE_EOF)
                FUNC3(ctx->inputs[i]);
        return 0;
    }
    return 1;
}