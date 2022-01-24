#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int per_mb_abt; int abt_type; int j_type; scalar_t__ per_mb_rl_bit; scalar_t__ abt_flag; scalar_t__ mspel_bit; int /*<<< orphan*/  cbp_table_index; scalar_t__ j_type_bit; } ;
typedef  TYPE_1__ Wmv2Context ;
struct TYPE_6__ {int pict_type; int qscale; int dc_table_index; int mv_table_index; int per_mb_rl_table; int mspel; int flipflop_rounding; int no_rounding; int rl_chroma_table_index; int rl_table_index; scalar_t__ esc3_run_length; scalar_t__ esc3_level_length; scalar_t__ inter_intra_pred; int /*<<< orphan*/  pb; } ;
typedef  TYPE_2__ MpegEncContext ;

/* Variables and functions */
 scalar_t__ AV_PICTURE_TYPE_I ; 
 int SKIP_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

int FUNC4(MpegEncContext *s, int picture_number)
{
    Wmv2Context *const w = (Wmv2Context *) s;

    FUNC2(&s->pb, 1, s->pict_type - 1);
    if (s->pict_type == AV_PICTURE_TYPE_I)
        FUNC2(&s->pb, 7, 0);
    FUNC2(&s->pb, 5, s->qscale);

    s->dc_table_index  = 1;
    s->mv_table_index  = 1; /* only if P-frame */
    s->per_mb_rl_table = 0;
    s->mspel           = 0;
    w->per_mb_abt      = 0;
    w->abt_type        = 0;
    w->j_type          = 0;

    FUNC0(s->flipflop_rounding);

    if (s->pict_type == AV_PICTURE_TYPE_I) {
        FUNC0(s->no_rounding == 1);
        if (w->j_type_bit)
            FUNC2(&s->pb, 1, w->j_type);

        if (w->per_mb_rl_bit)
            FUNC2(&s->pb, 1, s->per_mb_rl_table);

        if (!s->per_mb_rl_table) {
            FUNC1(&s->pb, s->rl_chroma_table_index);
            FUNC1(&s->pb, s->rl_table_index);
        }

        FUNC2(&s->pb, 1, s->dc_table_index);

        s->inter_intra_pred = 0;
    } else {
        int cbp_index;

        FUNC2(&s->pb, 2, SKIP_TYPE_NONE);

        FUNC1(&s->pb, cbp_index = 0);
        w->cbp_table_index = FUNC3(s, cbp_index);

        if (w->mspel_bit)
            FUNC2(&s->pb, 1, s->mspel);

        if (w->abt_flag) {
            FUNC2(&s->pb, 1, w->per_mb_abt ^ 1);
            if (!w->per_mb_abt)
                FUNC1(&s->pb, w->abt_type);
        }

        if (w->per_mb_rl_bit)
            FUNC2(&s->pb, 1, s->per_mb_rl_table);

        if (!s->per_mb_rl_table) {
            FUNC1(&s->pb, s->rl_table_index);
            s->rl_chroma_table_index = s->rl_table_index;
        }
        FUNC2(&s->pb, 1, s->dc_table_index);
        FUNC2(&s->pb, 1, s->mv_table_index);

        s->inter_intra_pred = 0; // (s->width * s->height < 320 * 240 && s->bit_rate <= II_BITRATE);
    }
    s->esc3_level_length = 0;
    s->esc3_run_length   = 0;

    return 0;
}