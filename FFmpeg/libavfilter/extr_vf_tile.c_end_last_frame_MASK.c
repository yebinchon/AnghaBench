#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ current; scalar_t__ nb_frames; scalar_t__ overlap; int /*<<< orphan*/ * out_ref; int /*<<< orphan*/  prev_out_ref; } ;
typedef  TYPE_1__ TileContext ;
struct TYPE_6__ {int /*<<< orphan*/ ** outputs; TYPE_1__* priv; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    TileContext *tile     = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out_buf = tile->out_ref;
    int ret;

    while (tile->current < tile->nb_frames)
        FUNC2(ctx, out_buf);
    tile->current = tile->overlap;
    if (tile->current) {
        FUNC1(&tile->prev_out_ref);
        tile->prev_out_ref = FUNC0(out_buf);
    }
    ret = FUNC3(outlink, out_buf);
    tile->out_ref = NULL;
    return ret;
}