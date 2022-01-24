#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_19__ {size_t cbp_table_index; void* per_block_abt; void* abt_type; scalar_t__ per_mb_abt; scalar_t__ abt_flag; scalar_t__ hshift; scalar_t__ j_type; } ;
typedef  TYPE_3__ Wmv2Context ;
struct TYPE_18__ {int /*<<< orphan*/  (* clear_blocks ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {int /*<<< orphan*/ * mb_type; } ;
struct TYPE_20__ {scalar_t__ pict_type; size_t mb_y; size_t mb_stride; size_t mb_x; int mb_intra; int* block_last_index; int*** mv; int mb_skipped; size_t ac_pred; size_t h263_aic_dir; int /*<<< orphan*/  avctx; int /*<<< orphan*/ * block; TYPE_2__ bdsp; void* rl_table_index; void* rl_chroma_table_index; int /*<<< orphan*/  gb; scalar_t__ per_mb_rl_table; scalar_t__ inter_intra_pred; void* mv_type; void* mv_dir; TYPE_1__ current_picture; } ;
struct TYPE_16__ {int /*<<< orphan*/  table; } ;
struct TYPE_15__ {int /*<<< orphan*/  table; } ;
struct TYPE_14__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_4__ MpegEncContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  INTER_INTRA_VLC_BITS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MB_INTRA_VLC_BITS ; 
 int /*<<< orphan*/  MB_NON_INTRA_VLC_BITS ; 
 void* MV_DIR_FORWARD ; 
 void* MV_TYPE_16X16 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,size_t,...) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,size_t,...) ; 
 TYPE_13__ ff_inter_intra_vlc ; 
 TYPE_12__* ff_mb_non_intra_vlc ; 
 TYPE_11__ ff_msmp4_mb_i_vlc ; 
 int FUNC4 (TYPE_4__*,int,int**) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__* const,int /*<<< orphan*/ *,int,int) ; 
 int FUNC13 (TYPE_3__* const,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__* const,int*,int*) ; 

int FUNC15(MpegEncContext *s, int16_t block[6][64])
{
    Wmv2Context *const w = (Wmv2Context *) s;
    int cbp, code, i, ret;
    uint8_t *coded_val;

    if (w->j_type)
        return 0;

    if (s->pict_type == AV_PICTURE_TYPE_P) {
        if (FUNC0(s->current_picture.mb_type[s->mb_y * s->mb_stride + s->mb_x])) {
            /* skip mb */
            s->mb_intra = 0;
            for (i = 0; i < 6; i++)
                s->block_last_index[i] = -1;
            s->mv_dir      = MV_DIR_FORWARD;
            s->mv_type     = MV_TYPE_16X16;
            s->mv[0][0][0] = 0;
            s->mv[0][0][1] = 0;
            s->mb_skipped  = 1;
            w->hshift      = 0;
            return 0;
        }
        if (FUNC7(&s->gb) <= 0)
            return AVERROR_INVALIDDATA;

        code = FUNC8(&s->gb, ff_mb_non_intra_vlc[w->cbp_table_index].table,
                        MB_NON_INTRA_VLC_BITS, 3);
        if (code < 0)
            return AVERROR_INVALIDDATA;
        s->mb_intra = (~code & 0x40) >> 6;

        cbp = code & 0x3f;
    } else {
        s->mb_intra = 1;
        if (FUNC7(&s->gb) <= 0)
            return AVERROR_INVALIDDATA;
        code = FUNC8(&s->gb, ff_msmp4_mb_i_vlc.table, MB_INTRA_VLC_BITS, 2);
        if (code < 0) {
            FUNC1(s->avctx, AV_LOG_ERROR,
                   "II-cbp illegal at %d %d\n", s->mb_x, s->mb_y);
            return AVERROR_INVALIDDATA;
        }
        /* predict coded block pattern */
        cbp = 0;
        for (i = 0; i < 6; i++) {
            int val = ((code >> (5 - i)) & 1);
            if (i < 4) {
                int pred   = FUNC4(s, i, &coded_val);
                val        = val ^ pred;
                *coded_val = val;
            }
            cbp |= val << (5 - i);
        }
    }

    if (!s->mb_intra) {
        int mx, my;
        FUNC14(w, &mx, &my);

        if (cbp) {
            s->bdsp.clear_blocks(s->block[0]);
            if (s->per_mb_rl_table) {
                s->rl_table_index        = FUNC2(&s->gb);
                s->rl_chroma_table_index = s->rl_table_index;
            }

            if (w->abt_flag && w->per_mb_abt) {
                w->per_block_abt = FUNC6(&s->gb);
                if (!w->per_block_abt)
                    w->abt_type = FUNC2(&s->gb);
            } else
                w->per_block_abt = 0;
        }

        if ((ret = FUNC13(w, &mx, &my)) < 0)
            return ret;

        s->mv_dir      = MV_DIR_FORWARD;
        s->mv_type     = MV_TYPE_16X16;
        s->mv[0][0][0] = mx;
        s->mv[0][0][1] = my;

        for (i = 0; i < 6; i++) {
            if ((ret = FUNC12(w, block[i], i, (cbp >> (5 - i)) & 1)) < 0) {
                FUNC1(s->avctx, AV_LOG_ERROR,
                       "\nerror while decoding inter block: %d x %d (%d)\n",
                       s->mb_x, s->mb_y, i);
                return ret;
            }
        }
    } else {
        if (s->pict_type == AV_PICTURE_TYPE_P)
            FUNC3(s->avctx, "%d%d ", s->inter_intra_pred, cbp);
        FUNC3(s->avctx, "I at %d %d %d %06X\n", s->mb_x, s->mb_y,
                ((cbp & 3) ? 1 : 0) + ((cbp & 0x3C) ? 2 : 0),
                FUNC9(&s->gb, 24));
        s->ac_pred = FUNC6(&s->gb);
        if (s->inter_intra_pred) {
            s->h263_aic_dir = FUNC8(&s->gb, ff_inter_intra_vlc.table,
                                       INTER_INTRA_VLC_BITS, 1);
            FUNC3(s->avctx, "%d%d %d %d/",
                    s->ac_pred, s->h263_aic_dir, s->mb_x, s->mb_y);
        }
        if (s->per_mb_rl_table && cbp) {
            s->rl_table_index        = FUNC2(&s->gb);
            s->rl_chroma_table_index = s->rl_table_index;
        }

        s->bdsp.clear_blocks(s->block[0]);
        for (i = 0; i < 6; i++) {
            if ((ret = FUNC5(s, block[i], i, (cbp >> (5 - i)) & 1, NULL)) < 0) {
                FUNC1(s->avctx, AV_LOG_ERROR,
                       "\nerror while decoding intra block: %d x %d (%d)\n",
                       s->mb_x, s->mb_y, i);
                return ret;
            }
        }
    }

    return 0;
}