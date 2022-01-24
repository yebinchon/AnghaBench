#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  float uint8_t ;
typedef  float uint16_t ;
struct TYPE_19__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_18__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_17__ {float** data; int* linesize; } ;
struct TYPE_16__ {int nb_planes; int* planeheight; int* planewidth; float* buffer; int planes; int depth; int /*<<< orphan*/  sigma; int /*<<< orphan*/  nuV; int /*<<< orphan*/  boundaryscaleV; int /*<<< orphan*/  postscaleV; int /*<<< orphan*/  steps; int /*<<< orphan*/  sigmaV; int /*<<< orphan*/  nu; int /*<<< orphan*/  boundaryscale; int /*<<< orphan*/  postscale; } ;
typedef  TYPE_1__ GBlurContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (float*,int,float*,int,int const,int const) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    GBlurContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    int plane;

    FUNC8(s->sigma,  s->steps, &s->postscale,  &s->boundaryscale,  &s->nu);
    FUNC8(s->sigmaV, s->steps, &s->postscaleV, &s->boundaryscaleV, &s->nuV);

    if (FUNC3(in)) {
        out = in;
    } else {
        out = FUNC6(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
        FUNC1(out, in);
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        const int height = s->planeheight[plane];
        const int width = s->planewidth[plane];
        float *bptr = s->buffer;
        const uint8_t *src = in->data[plane];
        const uint16_t *src16 = (const uint16_t *)in->data[plane];
        uint8_t *dst = out->data[plane];
        uint16_t *dst16 = (uint16_t *)out->data[plane];
        int y, x;

        if (!s->sigma || !(s->planes & (1 << plane))) {
            if (out != in)
                FUNC4(out->data[plane], out->linesize[plane],
                                    in->data[plane], in->linesize[plane],
                                    width * ((s->depth + 7) / 8), height);
            continue;
        }

        if (s->depth == 8) {
            for (y = 0; y < height; y++) {
                for (x = 0; x < width; x++) {
                    bptr[x] = src[x];
                }
                bptr += width;
                src += in->linesize[plane];
            }
        } else {
            for (y = 0; y < height; y++) {
                for (x = 0; x < width; x++) {
                    bptr[x] = src16[x];
                }
                bptr += width;
                src16 += in->linesize[plane] / 2;
            }
        }

        FUNC7(ctx, plane);

        bptr = s->buffer;
        if (s->depth == 8) {
            for (y = 0; y < height; y++) {
                for (x = 0; x < width; x++) {
                    dst[x] = bptr[x];
                }
                bptr += width;
                dst += out->linesize[plane];
            }
        } else {
            for (y = 0; y < height; y++) {
                for (x = 0; x < width; x++) {
                    dst16[x] = bptr[x];
                }
                bptr += width;
                dst16 += out->linesize[plane] / 2;
            }
        }
    }

    if (out != in)
        FUNC2(&in);
    return FUNC5(outlink, out);
}