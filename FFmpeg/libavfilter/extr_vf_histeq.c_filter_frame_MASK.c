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
typedef  int uint8_t ;
struct TYPE_18__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_17__ {int w; int h; TYPE_4__* dst; } ;
struct TYPE_16__ {int** data; int /*<<< orphan*/ * linesize; } ;
struct TYPE_15__ {int strength; int intensity; int* in_histogram; int bpp; int* rgba_map; int* LUT; int* out_histogram; scalar_t__ antibanding; } ;
typedef  TYPE_1__ HisteqContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 size_t A ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t B ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 size_t G ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,unsigned int,int*,int*) ; 
 scalar_t__ HISTEQ_ANTIBANDING_NONE ; 
 scalar_t__ HISTEQ_ANTIBANDING_WEAK ; 
 unsigned int FUNC3 (unsigned int) ; 
 int LCG_M ; 
 unsigned int LCG_SEED ; 
 size_t R ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int,int) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(AVFilterLink *inlink, AVFrame *inpic)
{
    AVFilterContext   *ctx     = inlink->dst;
    HisteqContext     *histeq  = ctx->priv;
    AVFilterLink      *outlink = ctx->outputs[0];
    int strength  = histeq->strength  * 1000;
    int intensity = histeq->intensity * 1000;
    int x, y, i, luthi, lutlo, lut, luma, oluma, m;
    AVFrame *outpic;
    unsigned int r, g, b, jran;
    uint8_t *src, *dst;

    outpic = FUNC9(outlink, outlink->w, outlink->h);
    if (!outpic) {
        FUNC6(&inpic);
        return FUNC0(ENOMEM);
    }
    FUNC5(outpic, inpic);

    /* Seed random generator for antibanding. */
    jran = LCG_SEED;

    /* Calculate and store the luminance and calculate the global histogram
       based on the luminance. */
    FUNC10(histeq->in_histogram, 0, sizeof(histeq->in_histogram));
    src = inpic->data[0];
    dst = outpic->data[0];
    for (y = 0; y < inlink->h; y++) {
        for (x = 0; x < inlink->w * histeq->bpp; x += histeq->bpp) {
            FUNC2(r, g, b, src, histeq->rgba_map);
            luma = (55 * r + 182 * g + 19 * b) >> 8;
            dst[x + histeq->rgba_map[A]] = luma;
            histeq->in_histogram[luma]++;
        }
        src += inpic->linesize[0];
        dst += outpic->linesize[0];
    }

#ifdef DEBUG
    for (x = 0; x < 256; x++)
        ff_dlog(ctx, "in[%d]: %u\n", x, histeq->in_histogram[x]);
#endif

    /* Calculate the lookup table. */
    histeq->LUT[0] = histeq->in_histogram[0];
    /* Accumulate */
    for (x = 1; x < 256; x++)
        histeq->LUT[x] = histeq->LUT[x-1] + histeq->in_histogram[x];

    /* Normalize */
    for (x = 0; x < 256; x++)
        histeq->LUT[x] = (histeq->LUT[x] * intensity) / (inlink->h * inlink->w);

    /* Adjust the LUT based on the selected strength. This is an alpha
       mix of the calculated LUT and a linear LUT with gain 1. */
    for (x = 0; x < 256; x++)
        histeq->LUT[x] = (strength * histeq->LUT[x]) / 255 +
                         ((255 - strength) * x)      / 255;

    /* Output the equalized frame. */
    FUNC10(histeq->out_histogram, 0, sizeof(histeq->out_histogram));

    src = inpic->data[0];
    dst = outpic->data[0];
    for (y = 0; y < inlink->h; y++) {
        for (x = 0; x < inlink->w * histeq->bpp; x += histeq->bpp) {
            luma = dst[x + histeq->rgba_map[A]];
            if (luma == 0) {
                for (i = 0; i < histeq->bpp; ++i)
                    dst[x + i] = 0;
                histeq->out_histogram[0]++;
            } else {
                lut = histeq->LUT[luma];
                if (histeq->antibanding != HISTEQ_ANTIBANDING_NONE) {
                    if (luma > 0) {
                        lutlo = histeq->antibanding == HISTEQ_ANTIBANDING_WEAK ?
                                (histeq->LUT[luma] + histeq->LUT[luma - 1]) / 2 :
                                 histeq->LUT[luma - 1];
                    } else
                        lutlo = lut;

                    if (luma < 255) {
                        luthi = (histeq->antibanding == HISTEQ_ANTIBANDING_WEAK) ?
                            (histeq->LUT[luma] + histeq->LUT[luma + 1]) / 2 :
                             histeq->LUT[luma + 1];
                    } else
                        luthi = lut;

                    if (lutlo != luthi) {
                        jran = FUNC3(jran);
                        lut = lutlo + ((luthi - lutlo + 1) * jran) / LCG_M;
                    }
                }

                FUNC2(r, g, b, src, histeq->rgba_map);
                if (((m = FUNC1(r, g, b)) * lut) / luma > 255) {
                    r = (r * 255) / m;
                    g = (g * 255) / m;
                    b = (b * 255) / m;
                } else {
                    r = (r * lut) / luma;
                    g = (g * lut) / luma;
                    b = (b * lut) / luma;
                }
                dst[x + histeq->rgba_map[R]] = r;
                dst[x + histeq->rgba_map[G]] = g;
                dst[x + histeq->rgba_map[B]] = b;
                oluma = FUNC4((55 * r + 182 * g + 19 * b) >> 8);
                histeq->out_histogram[oluma]++;
            }
        }
        src += inpic->linesize[0];
        dst += outpic->linesize[0];
    }
#ifdef DEBUG
    for (x = 0; x < 256; x++)
        ff_dlog(ctx, "out[%d]: %u\n", x, histeq->out_histogram[x]);
#endif

    FUNC6(&inpic);
    return FUNC8(outlink, outpic);
}