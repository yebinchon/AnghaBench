#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
struct TYPE_8__ {int n; int* table_mvx; int* table_mvy; TYPE_1__ vlc; } ;
struct TYPE_7__ {size_t mv_table_index; int /*<<< orphan*/  gb; int /*<<< orphan*/  mb_y; int /*<<< orphan*/  mb_x; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_2__ MpegEncContext ;
typedef  TYPE_3__ MVTable ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  MV_VLC_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* ff_mv_tables ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(MpegEncContext * s,
                                 int *mx_ptr, int *my_ptr)
{
    MVTable *mv;
    int code, mx, my;

    mv = &ff_mv_tables[s->mv_table_index];

    code = FUNC2(&s->gb, mv->vlc.table, MV_VLC_BITS, 2);
    if (code < 0){
        FUNC0(s->avctx, AV_LOG_ERROR, "illegal MV code at %d %d\n", s->mb_x, s->mb_y);
        return -1;
    }
    if (code == mv->n) {
        mx = FUNC1(&s->gb, 6);
        my = FUNC1(&s->gb, 6);
    } else {
        mx = mv->table_mvx[code];
        my = mv->table_mvy[code];
    }

    mx += *mx_ptr - 32;
    my += *my_ptr - 32;
    /* WARNING : they do not do exactly modulo encoding */
    if (mx <= -64)
        mx += 64;
    else if (mx >= 64)
        mx -= 64;

    if (my <= -64)
        my += 64;
    else if (my >= 64)
        my -= 64;
    *mx_ptr = mx;
    *my_ptr = my;
    return 0;
}