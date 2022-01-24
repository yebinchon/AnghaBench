#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int w; int h; int /*<<< orphan*/  format; TYPE_1__* dst; } ;
struct TYPE_13__ {int nb_components; int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; TYPE_2__* comp; } ;
struct TYPE_12__ {int depth; int* planewidth; int* planeheight; int* rdft_hbits; int* rdft_hlen; int* rdft_vbits; int* rdft_vlen; scalar_t__ eval_mode; int /*<<< orphan*/  irdft_horizontal; int /*<<< orphan*/  rdft_horizontal; void** weight; void** ivrdft; void** vrdft; void** rdft_vdata; void** ihrdft; void** hrdft; void** rdft_hdata; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_11__ {int depth; } ;
struct TYPE_10__ {TYPE_3__* priv; } ;
typedef  int /*<<< orphan*/  FFTSample ;
typedef  TYPE_3__ FFTFILTContext ;
typedef  TYPE_4__ AVPixFmtDescriptor ;
typedef  TYPE_5__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFT_R2C ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ EVAL_MODE_INIT ; 
 int /*<<< orphan*/  IDFT_C2R ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  irdft_horizontal16 ; 
 int /*<<< orphan*/  irdft_horizontal8 ; 
 int /*<<< orphan*/  rdft_horizontal16 ; 
 int /*<<< orphan*/  rdft_horizontal8 ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink)
{
    FFTFILTContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc;
    int rdft_hbits, rdft_vbits, i, plane;

    desc = FUNC4(inlink->format);
    s->depth = desc->comp[0].depth;
    s->planewidth[1] = s->planewidth[2] = FUNC1(inlink->w, desc->log2_chroma_w);
    s->planewidth[0] = s->planewidth[3] = inlink->w;
    s->planeheight[1] = s->planeheight[2] = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    s->nb_planes = FUNC3(inlink->format);

    for (i = 0; i < desc->nb_components; i++) {
        int w = s->planewidth[i];
        int h = s->planeheight[i];

        /* RDFT - Array initialization for Horizontal pass*/
        for (rdft_hbits = 1; 1 << rdft_hbits < w*10/9; rdft_hbits++);
        s->rdft_hbits[i] = rdft_hbits;
        s->rdft_hlen[i] = 1 << rdft_hbits;
        if (!(s->rdft_hdata[i] = FUNC2(h, s->rdft_hlen[i] * sizeof(FFTSample))))
            return FUNC0(ENOMEM);

        if (!(s->hrdft[i] = FUNC5(s->rdft_hbits[i], DFT_R2C)))
            return FUNC0(ENOMEM);
        if (!(s->ihrdft[i] = FUNC5(s->rdft_hbits[i], IDFT_C2R)))
            return FUNC0(ENOMEM);

        /* RDFT - Array initialization for Vertical pass*/
        for (rdft_vbits = 1; 1 << rdft_vbits < h*10/9; rdft_vbits++);
        s->rdft_vbits[i] = rdft_vbits;
        s->rdft_vlen[i] = 1 << rdft_vbits;
        if (!(s->rdft_vdata[i] = FUNC2(s->rdft_hlen[i], s->rdft_vlen[i] * sizeof(FFTSample))))
            return FUNC0(ENOMEM);

        if (!(s->vrdft[i] = FUNC5(s->rdft_vbits[i], DFT_R2C)))
            return FUNC0(ENOMEM);
        if (!(s->ivrdft[i] = FUNC5(s->rdft_vbits[i], IDFT_C2R)))
            return FUNC0(ENOMEM);
    }

    /*Luminance value - Array initialization*/
    for (plane = 0; plane < 3; plane++) {
        if(!(s->weight[plane] = FUNC2(s->rdft_hlen[plane], s->rdft_vlen[plane] * sizeof(double))))
            return FUNC0(ENOMEM);

        if (s->eval_mode == EVAL_MODE_INIT)
            FUNC6(s, inlink, plane);
    }

    if (s->depth <= 8) {
        s->rdft_horizontal = rdft_horizontal8;
        s->irdft_horizontal = irdft_horizontal8;
    } else if (s->depth > 8) {
        s->rdft_horizontal = rdft_horizontal16;
        s->irdft_horizontal = irdft_horizontal16;
    } else {
        return AVERROR_BUG;
    }
    return 0;
}