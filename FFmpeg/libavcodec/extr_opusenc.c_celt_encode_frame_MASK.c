#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__* error_energy; scalar_t__* energy; } ;
struct TYPE_23__ {int framebits; int transient; int channels; TYPE_3__* block; int /*<<< orphan*/  anticollapse; scalar_t__ anticollapse_needed; scalar_t__ size; int /*<<< orphan*/  start_band; scalar_t__ pfilter; scalar_t__ silence; } ;
struct TYPE_22__ {int channels; scalar_t__** last_quantized_energy; int /*<<< orphan*/  psyctx; } ;
typedef  int /*<<< orphan*/  OpusRangeCoder ;
typedef  TYPE_1__ OpusEncContext ;
typedef  TYPE_2__ CeltFrame ;
typedef  TYPE_3__ CeltBlock ;

/* Variables and functions */
 int CELT_MAX_BANDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,float,int) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(OpusEncContext *s, OpusRangeCoder *rc,
                              CeltFrame *f, int index)
{
    FUNC12(rc);

    FUNC10(&s->psyctx, f, index);

    FUNC4(s, f);

    if (f->silence) {
        if (f->framebits >= 16)
            FUNC13(rc, 1, 15); /* Silence (if using explicit singalling) */
        for (int ch = 0; ch < s->channels; ch++)
            FUNC15(s->last_quantized_energy[ch], 0.0f, sizeof(float)*CELT_MAX_BANDS);
        return;
    }

    /* Filters */
    FUNC0(s, f);
    if (f->pfilter) {
        FUNC13(rc, 0, 15);
        FUNC1(rc, f);
    }

    /* Transform */
    FUNC3(s, f);

    /* Need to handle transient/non-transient switches at any point during analysis */
    while (FUNC11(&s->psyctx, f, index))
        FUNC3(s, f);

    FUNC12(rc);

    /* Silence */
    FUNC13(rc, 0, 15);

    /* Pitch filter */
    if (!f->start_band && FUNC16(rc) + 16 <= f->framebits)
        FUNC1(rc, f);

    /* Transient flag */
    if (f->size && FUNC16(rc) + 3 <= f->framebits)
        FUNC13(rc, f->transient, 3);

    /* Main encoding */
    FUNC5  (f, rc, s->last_quantized_energy);
    FUNC2        (f, rc);
    FUNC8   (f, rc, 1);
    FUNC7    (f, rc);
    FUNC9(f, rc);

    /* Anticollapse bit */
    if (f->anticollapse_needed)
        FUNC14(rc, f->anticollapse, 1);

    /* Final per-band energy adjustments from leftover bits */
    FUNC6(s, rc, f);

    for (int ch = 0; ch < f->channels; ch++) {
        CeltBlock *block = &f->block[ch];
        for (int i = 0; i < CELT_MAX_BANDS; i++)
            s->last_quantized_energy[ch][i] = block->energy[i] + block->error_energy[i];
    }
}