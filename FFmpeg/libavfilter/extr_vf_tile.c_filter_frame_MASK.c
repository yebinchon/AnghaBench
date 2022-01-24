#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {unsigned int nb_frames; unsigned int overlap; unsigned int current; TYPE_9__* out_ref; int /*<<< orphan*/  draw; TYPE_1__* prev_out_ref; scalar_t__ init_padding; int /*<<< orphan*/  blank; scalar_t__ padding; scalar_t__ margin; } ;
typedef  TYPE_2__ TileContext ;
struct TYPE_20__ {int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_19__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_18__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_5__* dst; } ;
struct TYPE_17__ {int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,unsigned int*,unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *picref)
{
    AVFilterContext *ctx  = inlink->dst;
    TileContext *tile     = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    unsigned x0, y0;

    if (!tile->out_ref) {
        tile->out_ref = FUNC6(outlink, outlink->w, outlink->h);
        if (!tile->out_ref) {
            FUNC2(&picref);
            return FUNC0(ENOMEM);
        }
        FUNC1(tile->out_ref, picref);
        tile->out_ref->width  = outlink->w;
        tile->out_ref->height = outlink->h;

        /* fill surface once for margin/padding */
        if (tile->margin || tile->padding || tile->init_padding)
            FUNC5(&tile->draw, &tile->blank,
                              tile->out_ref->data,
                              tile->out_ref->linesize,
                              0, 0, outlink->w, outlink->h);
        tile->init_padding = 0;
    }

    if (tile->prev_out_ref) {
        unsigned x1, y1, i;

        for (i = tile->nb_frames - tile->overlap; i < tile->nb_frames; i++) {
            FUNC7(ctx, &x1, &y1, i);
            FUNC7(ctx, &x0, &y0, i - (tile->nb_frames - tile->overlap));
            FUNC4(&tile->draw,
                               tile->out_ref->data, tile->out_ref->linesize,
                               tile->prev_out_ref->data, tile->prev_out_ref->linesize,
                               x0, y0, x1, y1, inlink->w, inlink->h);

        }
    }

    FUNC7(ctx, &x0, &y0, tile->current);
    FUNC4(&tile->draw,
                       tile->out_ref->data, tile->out_ref->linesize,
                       picref->data, picref->linesize,
                       x0, y0, 0, 0, inlink->w, inlink->h);

    FUNC2(&picref);
    if (++tile->current == tile->nb_frames)
        return FUNC3(ctx);

    return 0;
}