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
struct TYPE_12__ {int w; int h; int /*<<< orphan*/  format; TYPE_1__* dst; } ;
struct TYPE_11__ {int nb_components; TYPE_2__* comp; int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; } ;
struct TYPE_10__ {int* planewidth; int* planeheight; int nb_planes; int* fft_bits; int* fft_len; void** fft_vdata_impulse; void** fft_hdata_impulse; void** fft_vdata; void** fft_hdata; int /*<<< orphan*/  depth; } ;
struct TYPE_9__ {int /*<<< orphan*/  depth; } ;
struct TYPE_8__ {TYPE_3__* priv; } ;
typedef  int /*<<< orphan*/  FFTComplex ;
typedef  TYPE_3__ ConvolveContext ;
typedef  TYPE_4__ AVPixFmtDescriptor ;
typedef  TYPE_5__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int) ; 
 void* FUNC3 (int,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink)
{
    ConvolveContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = FUNC4(inlink->format);
    int fft_bits, i;

    s->planewidth[1] = s->planewidth[2] = FUNC1(inlink->w, desc->log2_chroma_w);
    s->planewidth[0] = s->planewidth[3] = inlink->w;
    s->planeheight[1] = s->planeheight[2] = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    s->nb_planes = desc->nb_components;
    s->depth = desc->comp[0].depth;

    for (i = 0; i < s->nb_planes; i++) {
        int w = s->planewidth[i];
        int h = s->planeheight[i];
        int n = FUNC2(w, h);

        for (fft_bits = 1; 1 << fft_bits < n; fft_bits++);

        s->fft_bits[i] = fft_bits;
        s->fft_len[i] = 1 << s->fft_bits[i];

        if (!(s->fft_hdata[i] = FUNC3(s->fft_len[i], s->fft_len[i] * sizeof(FFTComplex))))
            return FUNC0(ENOMEM);

        if (!(s->fft_vdata[i] = FUNC3(s->fft_len[i], s->fft_len[i] * sizeof(FFTComplex))))
            return FUNC0(ENOMEM);

        if (!(s->fft_hdata_impulse[i] = FUNC3(s->fft_len[i], s->fft_len[i] * sizeof(FFTComplex))))
            return FUNC0(ENOMEM);

        if (!(s->fft_vdata_impulse[i] = FUNC3(s->fft_len[i], s->fft_len[i] * sizeof(FFTComplex))))
            return FUNC0(ENOMEM);
    }

    return 0;
}