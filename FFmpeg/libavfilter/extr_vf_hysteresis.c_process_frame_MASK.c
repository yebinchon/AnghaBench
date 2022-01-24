#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ is_disabled; TYPE_4__** outputs; } ;
struct TYPE_22__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_21__ {int* linesize; int /*<<< orphan*/  pts; scalar_t__* data; } ;
struct TYPE_20__ {TYPE_1__* opaque; TYPE_5__* parent; } ;
struct TYPE_18__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  pts; } ;
struct TYPE_19__ {int nb_planes; int planes; int* width; int* height; int index; TYPE_10__ fs; int /*<<< orphan*/  (* hysteresis ) (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int) ;scalar_t__ xy; scalar_t__ map; } ;
typedef  TYPE_1__ HysteresisContext ;
typedef  TYPE_2__ FFFrameSync ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC6 (TYPE_10__*,int,TYPE_3__**,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC10(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    HysteresisContext *s = fs->opaque;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out, *base, *alt;
    int ret;

    if ((ret = FUNC6(&s->fs, 0, &base, 0)) < 0 ||
        (ret = FUNC6(&s->fs, 1, &alt,  0)) < 0)
        return ret;

    if (ctx->is_disabled) {
        out = FUNC1(base);
        if (!out)
            return FUNC0(ENOMEM);
    } else {
        int p;

        out = FUNC7(outlink, outlink->w, outlink->h);
        if (!out)
            return FUNC0(ENOMEM);
        FUNC2(out, base);

        for (p = 0; p < s->nb_planes; p++) {
            if (!((1 << p) & s->planes)) {
                FUNC3(out->data[p], out->linesize[p], base->data[p], base->linesize[p],
                                    s->width[p], s->height[p]);
                continue;
            } else {
                int y;

                for (y = 0; y < s->height[p]; y++) {
                    FUNC8(out->data[p] + y * out->linesize[p], 0, s->width[p]);
                }
            }

            s->index = -1;
            FUNC8(s->map, 0, s->width[0] * s->height[0]);
            FUNC8(s->xy, 0, s->width[0] * s->height[0] * 4);

            s->hysteresis(s, base->data[p], alt->data[p],
                          out->data[p],
                          base->linesize[p], alt->linesize[p],
                          out->linesize[p],
                          s->width[p], s->height[p]);
        }
    }
    out->pts = FUNC4(s->fs.pts, s->fs.time_base, outlink->time_base);

    return FUNC5(outlink, out);
}