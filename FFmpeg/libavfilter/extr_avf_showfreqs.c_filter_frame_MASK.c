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
struct TYPE_14__ {TYPE_1__* priv; } ;
struct TYPE_13__ {TYPE_4__* dst; } ;
struct TYPE_12__ {scalar_t__ extended_data; int /*<<< orphan*/  pts; } ;
struct TYPE_11__ {scalar_t__ hop_size; int /*<<< orphan*/  fifo; int /*<<< orphan*/  win_size; int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ ShowFreqsContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ShowFreqsContext *s = ctx->priv;
    AVFrame *fin = NULL;
    int ret = 0;

    fin = FUNC4(inlink, s->win_size);
    if (!fin) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    fin->pts = s->pts;
    s->pts += s->hop_size;
    ret = FUNC2(s->fifo, (void **)fin->extended_data, s->win_size);
    if (ret < 0)
        goto fail;

    ret = FUNC5(inlink, fin);
    FUNC3(&fin);
    FUNC1(s->fifo, s->hop_size);

fail:
    FUNC3(&fin);
    return ret;
}