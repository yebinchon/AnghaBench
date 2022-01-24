#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* idct_permutation; } ;
struct TYPE_5__ {int* intra_matrix; int* chroma_intra_matrix; TYPE_1__ idsp; } ;
typedef  TYPE_2__ MpegEncContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 size_t* ff_zigzag_direct ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(MpegEncContext *s, GetBitContext *gb)
{
    int i, j, v;

    if (FUNC1(gb)) {
        if (FUNC2(gb) < 64*8)
            return AVERROR_INVALIDDATA;
        /* intra_quantiser_matrix */
        for (i = 0; i < 64; i++) {
            v = FUNC0(gb, 8);
            j = s->idsp.idct_permutation[ff_zigzag_direct[i]];
            s->intra_matrix[j]        = v;
            s->chroma_intra_matrix[j] = v;
        }
    }

    if (FUNC1(gb)) {
        if (FUNC2(gb) < 64*8)
            return AVERROR_INVALIDDATA;
        /* non_intra_quantiser_matrix */
        for (i = 0; i < 64; i++) {
            FUNC0(gb, 8);
        }
    }

    if (FUNC1(gb)) {
        if (FUNC2(gb) < 64*8)
            return AVERROR_INVALIDDATA;
        /* chroma_intra_quantiser_matrix */
        for (i = 0; i < 64; i++) {
            v = FUNC0(gb, 8);
            j = s->idsp.idct_permutation[ff_zigzag_direct[i]];
            s->chroma_intra_matrix[j] = v;
        }
    }

    if (FUNC1(gb)) {
        if (FUNC2(gb) < 64*8)
            return AVERROR_INVALIDDATA;
        /* chroma_non_intra_quantiser_matrix */
        for (i = 0; i < 64; i++) {
            FUNC0(gb, 8);
        }
    }

    FUNC3(gb);
    return 0;
}