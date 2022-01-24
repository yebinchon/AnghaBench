#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int bit_rate; int loop_filter; int slice_height; int mb_height; TYPE_2__* avctx; } ;
struct TYPE_8__ {int mspel_bit; int abt_flag; int j_type_bit; int top_left_mv_flag; int per_mb_rl_bit; TYPE_4__ s; } ;
typedef  TYPE_3__ Wmv2Context ;
struct TYPE_6__ {int den; int num; } ;
struct TYPE_7__ {TYPE_1__ time_base; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_4__ MpegEncContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4(Wmv2Context *w)
{
    MpegEncContext *const s = &w->s;
    PutBitContext pb;
    int code;

    FUNC2(&pb, s->avctx->extradata, s->avctx->extradata_size);

    FUNC3(&pb, 5, s->avctx->time_base.den / s->avctx->time_base.num); // yes 29.97 -> 29
    FUNC3(&pb, 11, FUNC0(s->bit_rate / 1024, 2047));

    FUNC3(&pb, 1, w->mspel_bit        = 1);
    FUNC3(&pb, 1, s->loop_filter);
    FUNC3(&pb, 1, w->abt_flag         = 1);
    FUNC3(&pb, 1, w->j_type_bit       = 1);
    FUNC3(&pb, 1, w->top_left_mv_flag = 0);
    FUNC3(&pb, 1, w->per_mb_rl_bit    = 1);
    FUNC3(&pb, 3, code                = 1);

    FUNC1(&pb);

    s->slice_height = s->mb_height / code;

    return 0;
}