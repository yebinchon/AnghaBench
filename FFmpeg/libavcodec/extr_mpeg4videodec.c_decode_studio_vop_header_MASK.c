#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  idct_permutation; } ;
struct TYPE_10__ {scalar_t__ pict_type; int progressive_frame; int alternate_scan; int frame_pred_frame_dct; int q_scale_type; int /*<<< orphan*/  intra_v_scantable; TYPE_1__ idsp; int /*<<< orphan*/  intra_h_scantable; int /*<<< orphan*/  intra_scantable; int /*<<< orphan*/  inter_scantable; scalar_t__ intra_dc_precision; scalar_t__ dct_precision; int /*<<< orphan*/  decode_mb; scalar_t__ interlaced_dct; scalar_t__ partitioned_frame; } ;
struct TYPE_11__ {scalar_t__ shape; TYPE_2__ m; } ;
typedef  TYPE_2__ MpegEncContext ;
typedef  TYPE_3__ Mpeg4DecContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ AV_PICTURE_TYPE_I ; 
 scalar_t__ BIN_ONLY_SHAPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_alternate_horizontal_scan ; 
 int /*<<< orphan*/  ff_alternate_vertical_scan ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_zigzag_direct ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpeg4_decode_studio_mb ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(Mpeg4DecContext *ctx, GetBitContext *gb)
{
    MpegEncContext *s = &ctx->m;

    if (FUNC5(gb) <= 32)
        return 0;

    s->partitioned_frame = 0;
    s->interlaced_dct = 0;
    s->decode_mb = mpeg4_decode_studio_mb;

    FUNC0(ctx, gb);

    FUNC9(gb, 10); /* temporal_reference */
    FUNC9(gb, 2); /* vop_structure */
    s->pict_type = FUNC3(gb, 2) + AV_PICTURE_TYPE_I; /* vop_coding_type */
    if (FUNC4(gb)) { /* vop_coded */
        FUNC10(gb); /* top_field_first */
        FUNC10(gb); /* repeat_first_field */
        s->progressive_frame = FUNC4(gb) ^ 1; /* progressive_frame */
    }

    if (s->pict_type == AV_PICTURE_TYPE_I) {
        if (FUNC4(gb))
            FUNC8(s);
    }

    if (ctx->shape != BIN_ONLY_SHAPE) {
        s->alternate_scan = FUNC4(gb);
        s->frame_pred_frame_dct = FUNC4(gb);
        s->dct_precision = FUNC3(gb, 2);
        s->intra_dc_precision = FUNC3(gb, 2);
        s->q_scale_type = FUNC4(gb);
    }

    if (s->alternate_scan) {
        FUNC2(s->idsp.idct_permutation, &s->inter_scantable,   ff_alternate_vertical_scan);
        FUNC2(s->idsp.idct_permutation, &s->intra_scantable,   ff_alternate_vertical_scan);
        FUNC2(s->idsp.idct_permutation, &s->intra_h_scantable, ff_alternate_vertical_scan);
        FUNC2(s->idsp.idct_permutation, &s->intra_v_scantable, ff_alternate_vertical_scan);
    } else {
        FUNC2(s->idsp.idct_permutation, &s->inter_scantable,   ff_zigzag_direct);
        FUNC2(s->idsp.idct_permutation, &s->intra_scantable,   ff_zigzag_direct);
        FUNC2(s->idsp.idct_permutation, &s->intra_h_scantable, ff_alternate_horizontal_scan);
        FUNC2(s->idsp.idct_permutation, &s->intra_v_scantable, ff_alternate_vertical_scan);
    }

    FUNC6(s);

    FUNC7(gb);
    FUNC1(s, gb, 4);

    return 0;
}