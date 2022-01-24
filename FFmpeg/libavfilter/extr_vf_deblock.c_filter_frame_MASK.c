#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_18__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_17__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_16__ {int const* linesize; scalar_t__* data; } ;
struct TYPE_15__ {int block; int nb_planes; int* planewidth; int* planeheight; int const bpc; int planes; int /*<<< orphan*/  max; int /*<<< orphan*/  dth; int /*<<< orphan*/  gth; int /*<<< orphan*/  bth; int /*<<< orphan*/  ath; int /*<<< orphan*/  (* deblockv ) (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* deblockh ) (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ DeblockContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/  const*,int const,int const,int const) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    DeblockContext *s = ctx->priv;
    const int block = s->block;
    AVFrame *out;
    int plane, x, y;

    if (FUNC4(in)) {
        out = in;
    } else {
        out = FUNC7(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC3(&in);
            return FUNC0(ENOMEM);
        }
        FUNC2(out, in);
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        const int width = s->planewidth[plane];
        const int height = s->planeheight[plane];
        const uint8_t *src = (const uint8_t *)in->data[plane];
        uint8_t *dst = (uint8_t *)out->data[plane];

        if (in != out)
            FUNC5(dst, out->linesize[plane],
                                src, in->linesize[plane],
                                width * s->bpc, height);

        if (!((1 << plane) & s->planes))
            continue;

        for (x = block; x < width; x += block)
            s->deblockv(dst + x * s->bpc, out->linesize[plane],
                        FUNC1(block, height), s->ath, s->bth, s->gth, s->dth, s->max);

        for (y = block; y < height; y += block) {
            dst += out->linesize[plane] * block;

            s->deblockh(dst, out->linesize[plane],
                        FUNC1(block, width),
                        s->ath, s->bth, s->gth, s->dth, s->max);

            for (x = block; x < width; x += block) {
                s->deblockh(dst + x * s->bpc, out->linesize[plane],
                            FUNC1(block, width - x),
                            s->ath, s->bth, s->gth, s->dth, s->max);
                s->deblockv(dst + x * s->bpc, out->linesize[plane],
                            FUNC1(block, height - y),
                            s->ath, s->bth, s->gth, s->dth, s->max);
            }
        }
    }

    if (in != out)
        FUNC3(&in);
    return FUNC6(outlink, out);
}