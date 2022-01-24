#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* priv; } ;
struct TYPE_14__ {void* w; void* h; int /*<<< orphan*/  format; TYPE_6__* dst; } ;
struct TYPE_13__ {int /*<<< orphan*/  log2_chroma_w; int /*<<< orphan*/  log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_12__ {int nb_threads; int depth; int max; int group_size; int group_bits; int pgroup_size; int block_size; scalar_t__ mode; int bm_range; int bm_step; int /*<<< orphan*/  get_block_row; int /*<<< orphan*/  do_block_ssd; int /*<<< orphan*/  do_output; void** planeheight; void** planewidth; TYPE_2__* slices; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_11__ {void* search_positions; void* rbufferz; void* rbuffer; void* rbufferv; void* rbufferh; void* bufferz; void* buffer; void* bufferv; void* bufferh; void* gdcti; void* gdctf; void* dcti; void* dctf; void* den; void* num; } ;
struct TYPE_10__ {int depth; } ;
typedef  TYPE_2__ SliceContext ;
typedef  int /*<<< orphan*/  FFTSample ;
typedef  TYPE_3__ BM3DContext ;
typedef  TYPE_4__ AVPixFmtDescriptor ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCT_II ; 
 int /*<<< orphan*/  DCT_III ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FINAL ; 
 int /*<<< orphan*/  MAX_NB_THREADS ; 
 int FUNC4 (int) ; 
 void* FUNC5 (int,int) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_block_ssd ; 
 int /*<<< orphan*/  do_block_ssd16 ; 
 int /*<<< orphan*/  do_output ; 
 int /*<<< orphan*/  do_output16 ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  get_block_row ; 
 int /*<<< orphan*/  get_block_row16 ; 

__attribute__((used)) static int FUNC11(AVFilterLink *inlink)
{
    const AVPixFmtDescriptor *desc = FUNC9(inlink->format);
    AVFilterContext *ctx = inlink->dst;
    BM3DContext *s = ctx->priv;
    int i, group_bits;

    s->nb_threads = FUNC3(FUNC10(ctx), MAX_NB_THREADS);
    s->nb_planes = FUNC8(inlink->format);
    s->depth = desc->comp[0].depth;
    s->max = (1 << s->depth) - 1;
    s->planeheight[1] = s->planeheight[2] = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;
    s->planewidth[1]  = s->planewidth[2]  = FUNC1(inlink->w, desc->log2_chroma_w);
    s->planewidth[0]  = s->planewidth[3]  = inlink->w;

    for (group_bits = 4; 1 << group_bits < s->group_size; group_bits++);
    s->group_bits = group_bits;
    s->pgroup_size = 1 << group_bits;

    for (i = 0; i < s->nb_threads; i++) {
        SliceContext *sc = &s->slices[i];

        sc->num = FUNC5(FUNC2(s->planewidth[0], s->block_size) * FUNC2(s->planeheight[0], s->block_size), sizeof(FFTSample));
        sc->den = FUNC5(FUNC2(s->planewidth[0], s->block_size) * FUNC2(s->planeheight[0], s->block_size), sizeof(FFTSample));
        if (!sc->num || !sc->den)
            return FUNC0(ENOMEM);

        sc->dctf = FUNC6(FUNC7(s->block_size), DCT_II);
        sc->dcti = FUNC6(FUNC7(s->block_size), DCT_III);
        if (!sc->dctf || !sc->dcti)
            return FUNC0(ENOMEM);

        if (s->group_bits > 1) {
            sc->gdctf = FUNC6(s->group_bits, DCT_II);
            sc->gdcti = FUNC6(s->group_bits, DCT_III);
            if (!sc->gdctf || !sc->gdcti)
                return FUNC0(ENOMEM);
        }

        sc->buffer = FUNC5(s->block_size * s->block_size * s->pgroup_size, sizeof(*sc->buffer));
        sc->bufferz = FUNC5(s->block_size * s->block_size * s->pgroup_size, sizeof(*sc->bufferz));
        sc->bufferh = FUNC5(s->block_size * s->block_size, sizeof(*sc->bufferh));
        sc->bufferv = FUNC5(s->block_size * s->block_size, sizeof(*sc->bufferv));
        if (!sc->bufferh || !sc->bufferv || !sc->buffer || !sc->bufferz)
            return FUNC0(ENOMEM);

        if (s->mode == FINAL) {
            sc->rbuffer = FUNC5(s->block_size * s->block_size * s->pgroup_size, sizeof(*sc->rbuffer));
            sc->rbufferz = FUNC5(s->block_size * s->block_size * s->pgroup_size, sizeof(*sc->rbufferz));
            sc->rbufferh = FUNC5(s->block_size * s->block_size, sizeof(*sc->rbufferh));
            sc->rbufferv = FUNC5(s->block_size * s->block_size, sizeof(*sc->rbufferv));
            if (!sc->rbufferh || !sc->rbufferv || !sc->rbuffer || !sc->rbufferz)
                return FUNC0(ENOMEM);
        }

        sc->search_positions = FUNC5(FUNC4(2 * s->bm_range / s->bm_step + 1), sizeof(*sc->search_positions));
        if (!sc->search_positions)
            return FUNC0(ENOMEM);
    }

    s->do_output = do_output;
    s->do_block_ssd = do_block_ssd;
    s->get_block_row = get_block_row;

    if (s->depth > 8) {
        s->do_output = do_output16;
        s->do_block_ssd = do_block_ssd16;
        s->get_block_row = get_block_row16;
    }

    return 0;
}