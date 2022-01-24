#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  table; } ;
struct TYPE_19__ {int /*<<< orphan*/  table; } ;
struct TYPE_18__ {int /*<<< orphan*/  table; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* clear_blocks ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int* mb_type; int*** motion_val; } ;
struct TYPE_16__ {int mb_x; int mb_y; int mb_stride; int*** mv; int mb_width; int* block_last_index; int /*<<< orphan*/ * block; TYPE_1__ bdsp; scalar_t__ mb_intra; TYPE_2__ current_picture; int /*<<< orphan*/  mv_type; int /*<<< orphan*/  mv_dir; int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; } ;
struct TYPE_17__ {int mba_diff; int gob_start_code_skipped; int current_mba; int gob_number; int mtype; int current_mv_x; int current_mv_y; TYPE_3__ s; } ;
typedef  TYPE_3__ MpegEncContext ;
typedef  TYPE_4__ H261Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  H261_CBP_VLC_BITS ; 
 int /*<<< orphan*/  H261_MBA_VLC_BITS ; 
 int /*<<< orphan*/  H261_MTYPE_VLC_BITS ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int MBA_STARTCODE ; 
 int MBA_STUFFING ; 
 int MB_TYPE_16x16 ; 
 int MB_TYPE_INTRA ; 
 int MB_TYPE_L0 ; 
 int /*<<< orphan*/  MV_DIR_FORWARD ; 
 int /*<<< orphan*/  MV_TYPE_16X16 ; 
 int SLICE_END ; 
 int SLICE_ERROR ; 
 int SLICE_OK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int* ff_h261_mtype_map ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_9__ h261_cbp_vlc ; 
 scalar_t__ FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_6__ h261_mba_vlc ; 
 TYPE_5__ h261_mtype_vlc ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(H261Context *h)
{
    MpegEncContext *const s = &h->s;
    int i, cbp, xy;

    cbp = 63;
    // Read mba
    do {
        h->mba_diff = FUNC14(&s->gb, h261_mba_vlc.table,
                               H261_MBA_VLC_BITS, 2);

        /* Check for slice end */
        /* NOTE: GOB can be empty (no MB data) or exist only of MBA_stuffing */
        if (h->mba_diff == MBA_STARTCODE) { // start code
            h->gob_start_code_skipped = 1;
            return SLICE_END;
        }
    } while (h->mba_diff == MBA_STUFFING); // stuffing

    if (h->mba_diff < 0) {
        if (FUNC13(&s->gb) <= 7)
            return SLICE_END;

        FUNC6(s->avctx, AV_LOG_ERROR, "illegal mba at %d %d\n", s->mb_x, s->mb_y);
        return SLICE_ERROR;
    }

    h->mba_diff    += 1;
    h->current_mba += h->mba_diff;

    if (h->current_mba > MBA_STUFFING)
        return SLICE_ERROR;

    s->mb_x = ((h->gob_number - 1) % 2) * 11 + ((h->current_mba - 1) % 11);
    s->mb_y = ((h->gob_number - 1) / 2) * 3 + ((h->current_mba - 1) / 11);
    xy      = s->mb_x + s->mb_y * s->mb_stride;
    FUNC8(s);
    FUNC11(s);

    // Read mtype
    h->mtype = FUNC14(&s->gb, h261_mtype_vlc.table, H261_MTYPE_VLC_BITS, 2);
    if (h->mtype < 0) {
        FUNC6(s->avctx, AV_LOG_ERROR, "Invalid mtype index %d\n",
               h->mtype);
        return SLICE_ERROR;
    }
    FUNC5(h->mtype < FUNC0(ff_h261_mtype_map));
    h->mtype = ff_h261_mtype_map[h->mtype];

    // Read mquant
    if (FUNC4(h->mtype))
        FUNC10(s, FUNC12(&s->gb, 5));

    s->mb_intra = FUNC3(h->mtype);

    // Read mv
    if (FUNC2(h->mtype)) {
        /* Motion vector data is included for all MC macroblocks. MVD is
         * obtained from the macroblock vector by subtracting the vector
         * of the preceding macroblock. For this calculation the vector
         * of the preceding macroblock is regarded as zero in the
         * following three situations:
         * 1) evaluating MVD for macroblocks 1, 12 and 23;
         * 2) evaluating MVD for macroblocks in which MBA does not represent a difference of 1;
         * 3) MTYPE of the previous macroblock was not MC. */
        if ((h->current_mba ==  1) || (h->current_mba == 12) ||
            (h->current_mba == 23) || (h->mba_diff != 1)) {
            h->current_mv_x = 0;
            h->current_mv_y = 0;
        }

        h->current_mv_x = FUNC7(&s->gb, h->current_mv_x);
        h->current_mv_y = FUNC7(&s->gb, h->current_mv_y);
    } else {
        h->current_mv_x = 0;
        h->current_mv_y = 0;
    }

    // Read cbp
    if (FUNC1(h->mtype))
        cbp = FUNC14(&s->gb, h261_cbp_vlc.table, H261_CBP_VLC_BITS, 2) + 1;

    if (s->mb_intra) {
        s->current_picture.mb_type[xy] = MB_TYPE_INTRA;
        goto intra;
    }

    //set motion vectors
    s->mv_dir                      = MV_DIR_FORWARD;
    s->mv_type                     = MV_TYPE_16X16;
    s->current_picture.mb_type[xy] = MB_TYPE_16x16 | MB_TYPE_L0;
    s->mv[0][0][0]                 = h->current_mv_x * 2; // gets divided by 2 in motion compensation
    s->mv[0][0][1]                 = h->current_mv_y * 2;

    if (s->current_picture.motion_val[0]) {
        int b_stride = 2*s->mb_width + 1;
        int b_xy     = 2 * s->mb_x + (2 * s->mb_y) * b_stride;
        s->current_picture.motion_val[0][b_xy][0] = s->mv[0][0][0];
        s->current_picture.motion_val[0][b_xy][1] = s->mv[0][0][1];
    }

intra:
    /* decode each block */
    if (s->mb_intra || FUNC1(h->mtype)) {
        s->bdsp.clear_blocks(s->block[0]);
        for (i = 0; i < 6; i++) {
            if (FUNC15(h, s->block[i], i, cbp & 32) < 0)
                return SLICE_ERROR;
            cbp += cbp;
        }
    } else {
        for (i = 0; i < 6; i++)
            s->block_last_index[i] = -1;
    }

    FUNC9(s, s->block);

    return SLICE_OK;
}