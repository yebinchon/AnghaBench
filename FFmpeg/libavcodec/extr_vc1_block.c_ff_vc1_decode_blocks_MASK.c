#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int mb_x; int mb_y; int pict_type; int /*<<< orphan*/  er; int /*<<< orphan*/  low_delay; int /*<<< orphan*/  loop_filter; int /*<<< orphan*/  gb; int /*<<< orphan*/  current_picture; scalar_t__ esc3_level_length; } ;
struct TYPE_10__ {int pq; int left_blk_idx; int topleft_blk_idx; int top_blk_idx; int /*<<< orphan*/  profile; int /*<<< orphan*/  bi_type; int /*<<< orphan*/  p_frame_skipped; TYPE_1__ s; scalar_t__ cur_blk_idx; int /*<<< orphan*/  pquantizer; scalar_t__ halfpq; int /*<<< orphan*/  x8; scalar_t__ x8_type; } ;
typedef  TYPE_2__ VC1Context ;

/* Variables and functions */
#define  AV_PICTURE_TYPE_B 130 
#define  AV_PICTURE_TYPE_I 129 
#define  AV_PICTURE_TYPE_P 128 
 int /*<<< orphan*/  ER_MB_END ; 
 int /*<<< orphan*/  PROFILE_ADVANCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(VC1Context *v)
{

    v->s.esc3_level_length = 0;
    if (v->x8_type) {
        FUNC1(&v->x8, &v->s.current_picture,
                                  &v->s.gb, &v->s.mb_x, &v->s.mb_y,
                                  2 * v->pq + v->halfpq, v->pq * !v->pquantizer,
                                  v->s.loop_filter, v->s.low_delay);

        FUNC0(&v->s.er, 0, 0,
                        (v->s.mb_x >> 1) - 1, (v->s.mb_y >> 1) - 1,
                        ER_MB_END);
    } else {
        v->cur_blk_idx     =  0;
        v->left_blk_idx    = -1;
        v->topleft_blk_idx =  1;
        v->top_blk_idx     =  2;
        switch (v->s.pict_type) {
        case AV_PICTURE_TYPE_I:
            if (v->profile == PROFILE_ADVANCED)
                FUNC4(v);
            else
                FUNC3(v);
            break;
        case AV_PICTURE_TYPE_P:
            if (v->p_frame_skipped)
                FUNC6(v);
            else
                FUNC5(v);
            break;
        case AV_PICTURE_TYPE_B:
            if (v->bi_type) {
                if (v->profile == PROFILE_ADVANCED)
                    FUNC4(v);
                else
                    FUNC3(v);
            } else
                FUNC2(v);
            break;
        }
    }
}