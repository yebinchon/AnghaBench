#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {int h; int w; TYPE_5__* dst; int /*<<< orphan*/  format; } ;
struct TYPE_10__ {TYPE_1__* comp; int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; int /*<<< orphan*/  nb_components; } ;
struct TYPE_9__ {float direction; int range; int* planeheight; int* planewidth; int* thr; int* threshold; int* x_pos; int* y_pos; int /*<<< orphan*/  deband; scalar_t__ coupling; int /*<<< orphan*/ * shift; int /*<<< orphan*/  nb_components; } ;
struct TYPE_8__ {int depth; } ;
typedef  TYPE_2__ DebandContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC2 (int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int const FUNC4 (float const) ; 
 int /*<<< orphan*/  deband_16_c ; 
 int /*<<< orphan*/  deband_16_coupling_c ; 
 int /*<<< orphan*/  deband_8_c ; 
 int /*<<< orphan*/  deband_8_coupling_c ; 
 float FUNC5 (int,int) ; 
 int const FUNC6 (float const) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink)
{
    const AVPixFmtDescriptor *desc = FUNC3(inlink->format);
    AVFilterContext *ctx = inlink->dst;
    DebandContext *s = ctx->priv;
    const float direction = s->direction;
    const int range = s->range;
    int x, y;

    s->nb_components = desc->nb_components;

    s->planeheight[1] = s->planeheight[2] = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;
    s->planewidth[1]  = s->planewidth[2]  = FUNC1(inlink->w, desc->log2_chroma_w);
    s->planewidth[0]  = s->planewidth[3]  = inlink->w;
    s->shift[0] = desc->log2_chroma_w;
    s->shift[1] = desc->log2_chroma_h;

    if (s->coupling)
        s->deband = desc->comp[0].depth > 8 ? deband_16_coupling_c : deband_8_coupling_c;
    else
        s->deband = desc->comp[0].depth > 8 ? deband_16_c : deband_8_c;

    s->thr[0] = ((1 << desc->comp[0].depth) - 1) * s->threshold[0];
    s->thr[1] = ((1 << desc->comp[1].depth) - 1) * s->threshold[1];
    s->thr[2] = ((1 << desc->comp[2].depth) - 1) * s->threshold[2];
    s->thr[3] = ((1 << desc->comp[3].depth) - 1) * s->threshold[3];

    s->x_pos = FUNC2(s->planewidth[0] * s->planeheight[0] * sizeof(*s->x_pos));
    s->y_pos = FUNC2(s->planewidth[0] * s->planeheight[0] * sizeof(*s->y_pos));
    if (!s->x_pos || !s->y_pos)
        return FUNC0(ENOMEM);

    for (y = 0; y < s->planeheight[0]; y++) {
        for (x = 0; x < s->planewidth[0]; x++) {
            const float r = FUNC5(x, y);
            const float dir = direction < 0 ? -direction : r * direction;
            const int dist = range < 0 ? -range : r * range;

            s->x_pos[y * s->planewidth[0] + x] = FUNC4(dir) * dist;
            s->y_pos[y * s->planewidth[0] + x] = FUNC6(dir) * dist;
        }
    }

    return 0;
}