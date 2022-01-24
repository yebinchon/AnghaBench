#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_20__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_19__ {int w; int h; TYPE_5__* dst; } ;
struct TYPE_18__ {int* linesize; int height; int width; scalar_t__* data; int /*<<< orphan*/  pts; } ;
struct TYPE_17__ {int intensity; int background; scalar_t__ cie; int /*<<< orphan*/  gamuts; int /*<<< orphan*/  color_system; scalar_t__ show_white; TYPE_1__* f; int /*<<< orphan*/  (* filter ) (TYPE_5__*,TYPE_3__*,double*,double*,int,int) ;} ;
struct TYPE_16__ {int* linesize; scalar_t__* data; } ;
typedef  TYPE_2__ CiescopeContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 scalar_t__ LUV ; 
 scalar_t__ UCS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_3__*,double*,double*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (double,double,double*,double*) ; 
 int /*<<< orphan*/  FUNC11 (double,double,double*,double*) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx  = inlink->dst;
    CiescopeContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    int i = s->intensity * 65535;
    int w = outlink->w;
    int h = outlink->h;
    AVFrame *out;
    int ret, x, y;

    out = FUNC5(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    out->pts = in->pts;

    if (!s->background) {
        ret = FUNC3(ctx);
        if (ret < 0) {
            FUNC2(&out);
            return ret;
        }
        s->background = 1;
    }
    for (y = 0; y < outlink->h; y++) {
        FUNC6(out->data[0] + y * out->linesize[0], 0, outlink->w * 8);
    }

    for (y = 0; y < in->height; y++) {
        for (x = 0; x < in->width; x++) {
            double cx, cy;
            uint16_t *dst;
            int wx, wy;

            s->filter(ctx, in, &cx, &cy, x, y);

            if (s->cie == LUV) {
                double up, vp;
                FUNC10(cx, cy, &up, &vp);
                cx = up;
                cy = vp;
            } else if (s->cie == UCS) {
                double u, v;
                FUNC11(cx, cy, &u, &v);
                cx = u;
                cy = v;
            }

            wx = (w - 1) * cx;
            wy = (h - 1) - ((h - 1) * cy);

            if (wx < 0 || wx >= w ||
                wy < 0 || wy >= h)
                continue;

            dst = (uint16_t *)(out->data[0] + wy * out->linesize[0] + wx * 8 + 0);
            dst[0] = FUNC1(dst[0] + i, 65535);
            dst[1] = FUNC1(dst[1] + i, 65535);
            dst[2] = FUNC1(dst[2] + i, 65535);
            dst[3] = 65535;
        }
    }

    for (y = 0; y < outlink->h; y++) {
        uint16_t *dst = (uint16_t *)(out->data[0] + y * out->linesize[0]);
        const uint16_t *src = (const uint16_t *)(s->f->data[0] + y * s->f->linesize[0]);
        for (x = 0; x < outlink->w; x++) {
            const int xx = x * 4;
            if (dst[xx + 3] == 0) {
                dst[xx + 0] = src[xx + 0];
                dst[xx + 1] = src[xx + 1];
                dst[xx + 2] = src[xx + 2];
                dst[xx + 3] = src[xx + 3];
            }
        }
    }

    if (s->show_white)
        FUNC8((uint16_t *)out->data[0], out->linesize[0] / 2,
                         outlink->w, outlink->h, 65535,
                         s->color_system, s->cie);

    FUNC7((uint16_t *)out->data[0], out->linesize[0] / 2,
                outlink->w, outlink->h,
                s->cie, s->gamuts);

    FUNC2(&in);
    return FUNC4(outlink, out);
}