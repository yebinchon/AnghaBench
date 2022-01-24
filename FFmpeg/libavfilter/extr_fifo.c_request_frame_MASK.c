#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * inputs; TYPE_3__* priv; } ;
struct TYPE_12__ {TYPE_5__* src; scalar_t__ request_samples; } ;
struct TYPE_9__ {TYPE_2__* next; } ;
struct TYPE_11__ {TYPE_1__ root; } ;
struct TYPE_10__ {int /*<<< orphan*/  frame; } ;
typedef  TYPE_3__ FifoContext ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *outlink)
{
    FifoContext *s = outlink->src->priv;
    int ret = 0;

    if (!s->root.next) {
        if ((ret = FUNC1(outlink->src->inputs[0])) < 0) {
            if (ret == AVERROR_EOF && outlink->request_samples)
                return FUNC3(outlink->src);
            return ret;
        }
        if (!s->root.next)
            return 0;
    }

    if (outlink->request_samples) {
        return FUNC3(outlink->src);
    } else {
        ret = FUNC0(outlink, s->root.next->frame);
        FUNC2(s);
    }

    return ret;
}